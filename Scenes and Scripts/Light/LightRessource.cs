using Godot;
using System;

public partial class LightRessource : Node2D {
	public Area2D _area;
	public IncreaseCircleSize _shader;
	public override void _Ready() {
		_shader = GetNode<IncreaseCircleSize>("/root/Level/Player/CircleShader");
		_area = GetNode<Area2D>("TextureRect/Area2D");
	}
	private void _on_area_2d_area_entered(Area2D area) {
		GD.Print();
		QueueFree();
	}
	private void _on_area_2d_body_entered(Node2D body) {
		_shader.UpdateCircleSize();
		GD.Print("Dead Light");
		QueueFree();
	}
}





