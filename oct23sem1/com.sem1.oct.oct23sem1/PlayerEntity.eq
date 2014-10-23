
/*
 * PlayerEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity : SEEntity
{
	SESprite hero;
	int w;
	int h;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();

		rsc.prepare_image("player","sieg",0.2*w);
		hero = add_sprite_for_image(SEImage.for_resource("player"));
		hero.move(0.5*w,0.5*h);
	
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now,delta);
		hero.move(MainScene.x,MainScene.y);
	}

	public void cleanup() {
		base.cleanup();
	}
}
