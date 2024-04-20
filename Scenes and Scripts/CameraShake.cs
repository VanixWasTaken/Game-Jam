using Godot;
using System;

public partial class CameraShake : Camera2D
{
	// Shake parameters
	private double shakeDuration = 0f;
	private float shakeMagnitude = 10f;
	private double dampingSpeed = 1.0f;
	private Vector2 initialPosition;

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		initialPosition = Offset;
	}

	// Call this method to shake the camera
	public void ShakeCamera(float duration, float magnitude)
	{
		GD.Print("owo");
		shakeDuration = duration;
		shakeMagnitude = magnitude;
	}

	public override void _Process(double delta)
	{
		if (shakeDuration > 0)
		{
			// Shake the camera
			GD.Print("uwu");
			Offset = initialPosition + new Vector2((float)GD.RandRange(-1, 1), (float)GD.RandRange(-1, 1)) * shakeMagnitude;

			shakeDuration -= delta * dampingSpeed;
		}
		else
		{
			// Reset the camera position
			Offset = initialPosition;
		}
	}
}

