using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Disc : MonoBehaviour {

    #region Private
    private Rigidbody myRb;

    private Vector3 oldVelocity;

    private LayerMask _collisionMask;
    
    private Collider[] _collidersUpAgaisnt = new Collider[DIRECTIONS_CHECKED];
    private Vector3[] _collidedNormals = new Vector3[DIRECTIONS_CHECKED];

    private Ray downCheck;

    private const int DIRECTIONS_CHECKED = 6;
    private const int DIRECTION_DOWN = 0;
    private const int DIRECTION_UP = 1;
    private const int DIRECTION_LEFT = 2;
    private const int DIRECTION_RIGHT = 3;
    private const int DIRECTION_FORWARD = 4;
    private const int DIRECTION_BACKWARD = 5;


    #endregion


    // Use this for initialization
    void Start () {
        myRb = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void FixedUpdate()
    {
        oldVelocity = myRb.velocity;

        downCheck = new Ray(this.transform.position, Vector3.down);
        ManageConstraints();
       
    }

    private void OnCollisionEnter(Collision collision)
    {
        ReflectOffCollision(collision);
    }

    
    void ReflectOffCollision(Collision collision)
    {
        ContactPoint contact = collision.contacts[0];
        Debug.Log(contact.normal);

        Debug.Log("Dot Prodct: " + Mathf.Abs(Vector3.Dot(transform.up, contact.normal)));
        float tempDot = Mathf.Abs(Vector3.Dot(transform.up, contact.normal));

        if (tempDot < 0.5f)
        {
            //Debug.Log("Hit based on ring");
            //Vector3 cross = Vector3.Cross(transform.up, contact.normal);
            //Debug.DrawRay(contact.point, cross, Color.yellow);
            //Debug.Log(myRb.velocity);
            //Vector3 reflection = Vector3.Reflect(myRb.velocity, cross.normalized);
            //Debug.Log("Reflection: " + reflection);
            //Debug.DrawRay(contact.point, reflection, Color.blue);
            ////GetComponent<Rigidbody>().velocity = GetComponent<Rigidbody>().velocity.magnitude * reflection;

            Debug.DrawRay(contact.point, contact.normal * 5f, Color.green, 0.3f); // draw green normal
            Debug.DrawRay(contact.point, -oldVelocity * 5f, Color.red, 0.3f); // draw red "in" velocity
            Vector3 reflectedVelocity = Vector3.Reflect(oldVelocity, contact.normal);
            Debug.DrawRay(contact.point, reflectedVelocity, Color.blue, 0.3f); // draw blue "out" velocity
            myRb.velocity = reflectedVelocity;


        }

    }

    private void ManageConstraints()
    {
        //This code detects if a surface is close enough and if there is then it will remove the rotation
        //constraints so that the disk can tilt a bit before it falls. It's more realistic that way.
        if (Physics.Raycast(downCheck, 1f) == true)
        {
            myRb.constraints = RigidbodyConstraints.None;
        }
        else
        {
            myRb.constraints = RigidbodyConstraints.FreezeRotationX;
            myRb.constraints = RigidbodyConstraints.FreezeRotationZ;
        }
    }

    public void Teleport()
    {
        RaycastHit hitInfo;
        float length = 0.2f;

        if (Physics.Raycast(downCheck, out hitInfo, length, GameManager.instance.collisionLayer))
        {
            //Getting to here means that the disk is on the floor. Now check for input.

            Vector3 temp = hitInfo.point;
            temp.x -= GameManager.instance._hmd.transform.localPosition.x;
            temp.z -= GameManager.instance._hmd.transform.localPosition.z;

            GameManager.instance.player.transform.position = temp;


            Vector3 temp2 = new Vector3(0f, GameManager.instance._hmd.transform.localPosition.y, 0f);
            GameManager.instance._hmd.transform.localPosition = temp2;
                
            }
        
    }

    //Draw Debugger
    void OnDrawGizmos()
    {
        Color color;
        color = Color.green;
        // local up
        DrawHelperAtCenter(this.transform.up, color, 2f);

        color.g -= 0.5f;
        // global up
        //DrawHelperAtCenter(Vector3.up, color, 1f);

        color = Color.blue;
        // local forward
        //DrawHelperAtCenter(this.transform.forward, color, 2f);

        color.b -= 0.5f;
        // global forward
       // DrawHelperAtCenter(Vector3.forward, color, 1f);

        color = Color.red;
        // local right
        //DrawHelperAtCenter(this.transform.right, color, 2f);

        color.r -= 0.5f;
        // global right
        //DrawHelperAtCenter(Vector3.right, color, 1f);
    }

    private void DrawHelperAtCenter(Vector3 direction, Color color, float scale)
    {
        Gizmos.color = color;
        Vector3 destination = transform.position + direction * scale;
        Gizmos.DrawLine(transform.position, destination);
    }
}
