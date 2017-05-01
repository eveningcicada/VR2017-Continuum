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
