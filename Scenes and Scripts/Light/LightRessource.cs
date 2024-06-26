using Godot;
using System;

public partial class LightRessource : Node2D {
	private Area2D _area;
	public IncreaseCircleSize _shader;
	private int randomTime;
	private RandomNumberGenerator _random = new RandomNumberGenerator();
	private AnimationPlayer _blinkAnimation;
	private TextureRect _textureRect;
	GDScript myGDScript = (GDScript)GD.Load("res://Scenes and Scripts/highscore.gd");
	//CanvasLayer myNode = new CanvasLayer();
	

	
	public override void _Ready() {
		_shader = GetNode<IncreaseCircleSize>("/root/Level/Player/CircleShader");
		_area = GetNode<Area2D>("TextureRect2/Area2D");
		randomTime = _random.RandiRange(3, 8);
		_blinkAnimation = GetNode<AnimationPlayer>("AnimationPlayer");
		_textureRect = GetNode<TextureRect>("Blink");
		PlayBlinkAnim();
		
		//Timer starts anim at random intervall between 3 and 8s
		Timer timer = new Timer();
		timer.WaitTime = randomTime;
		timer.Timeout += PlayBlinkAnim;
		AddChild(timer);
		timer.Start();
		
		//myNode.SetScript(myGDScript);
		
	}

	//Collision with Player, Increase Circle Size, Destroy object
	private void _on_area_2d_body_entered(Node2D body) {
		_shader.UpdateCircleSize();
		QueueFree();
		//myNode.Call("IncreaseHighScore", 1000);
	}

	//Play Blink anim andn starts timer to hide Texture after anim
	private void PlayBlinkAnim() {
		_textureRect.Visible = true;
		_blinkAnimation.Play("Blink");
		
		Timer timer = new Timer();
		timer.WaitTime = 1;
		timer.Timeout += HideTexture;
		AddChild(timer);
		timer.OneShot = true;
		timer.Start();
	}

	//Hides Blink Texture after anim is over
	private void HideTexture() {
		_textureRect.Visible = false;
	}
}





