
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour
{
    // 移动速度
    public float moveSpeed = 20f;
    // 镜头拉伸速度
    public float zoomSpeed = 10f;

    public float rate = 10f;

    public float GetMoveSpeed() 
    {
        return moveSpeed + this.transform.position.y / rate;
    }

    void Start()
    {

    }


    void Update()
    {
        //Debug.Log("camera button ");
        float dx = Input.GetAxis("Mouse X");
        float dy = Input.GetAxis("Mouse Y");

        // 鼠标左键移动
        if (Input.GetMouseButton(2) || Input.GetMouseButton(1))
        {
            dx *= GetMoveSpeed();
            dy *= GetMoveSpeed();
            Vector3 dir = new Vector3(-dx, 0, -dy).normalized * GetMoveSpeed();

            this.transform.position = this.transform.position + dir;
        }

        if (Input.GetKey(KeyCode.W))
        {
            this.transform.position = this.transform.position + Vector3.back;
        }

        if (Input.GetKey(KeyCode.S))
        {
            this.transform.position = this.transform.position + Vector3.forward;
        }

        if (Input.GetKey(KeyCode.A))
        {
            this.transform.position = this.transform.position + Vector3.right;
        }

        if (Input.GetKey(KeyCode.D))
        {
            this.transform.position = this.transform.position + Vector3.left;
        }

        float y = Input.GetAxis("Mouse ScrollWheel");
        Vector3 d = new Vector3(0, -y, 0).normalized * zoomSpeed;

        this.transform.position = this.transform.position + d;
      
    }

    private void FixedUpdate()
    {

    }
}

