////////////////////////////////////////////////////////////////////////////////////////////////
//
// ドットスクリーン 共通設定/関数
//  dot_screen_common.fx
//  作成: GAJ
//  
//
////////////////////////////////////////////////////////////////////////////////////////////////
#define PI 3.1415927

// ----------------------------------------------------------------------------
// コントローラー
#define CONTROLLER_NAME "dot_screen_controller.pmx"
bool isExistController : CONTROLOBJECT < string name = CONTROLLER_NAME; >;
float mSizeP : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "size+"; >;
float mSizeM : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "size-"; >;
float mWidthP : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "width+"; >;
float mWidthM : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "width-"; >;
float mAngleP : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "angle+"; >;
float mAngleM : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "angle-"; >;
float mBlackOffsetP : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "mask black offset+"; >;
float mBlackOffsetM : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "mask black offset-"; >;
float mBlackLevelP : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "black level+"; >;
float mBlackLevelM : CONTROLOBJECT < string name = CONTROLLER_NAME; string item = "black level-"; >;

// ----------------------------------------------------------------------------
// 指定した大きさの円を描く (外側：0.0、内側：白1.0)
float circle(float2 uv, float size)
{
	size = size * 0.5;
	float d = distance(float2(0.5, 0.5), uv);
	d = 1.0 - step(size,d);
	return d;
}


