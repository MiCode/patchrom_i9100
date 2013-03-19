.class public Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;
    }
.end annotation


# static fields
.field private static final EXPOSURE_MENU_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_CENTERLINE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_CENTERLINE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_NUM_OF_STEP:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_OFFSET:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDERBAR_POX_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDERBAR_POX_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EXPOSURE_VALUE_SLIDER_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GAUGE_BALL_SELECT_AREA_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GAUGE_BALL_SELECT_AREA_WIDTH:F = 0.0f

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MAX_RATIO:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_MENU_POS_Y:I = 0x0

.field private static final ZOOM_MENU_TYPE:I = 0x2

.field private static final ZOOM_MENU_WIDTH:I

.field private static final ZOOM_NUM_OF_STEP:I

.field private static final ZOOM_TEXT_HEIGHT:I

.field private static final ZOOM_TEXT_WIDTH:I

.field private static final ZOOM_VALUE_SLIDERBAR_POX_X:I

.field private static final ZOOM_VALUE_SLIDERBAR_POX_Y:I

.field private static final ZOOM_VALUE_SLIDER_HEIGHT:I

.field private static final ZOOM_VALUE_SLIDER_POS_X:I

.field private static final ZOOM_VALUE_SLIDER_POS_Y:I

.field private static final ZOOM_VALUE_SLIDER_WIDTH:I

.field private static final ZOOM_VALUE_TEXT_FONT_SIZE:I


# instance fields
.field private mCenterLine:Lcom/sec/android/glview/TwGLImage;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMinusButton:Lcom/sec/android/glview/TwGLButton;

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

.field mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

.field private mPlusButton:Lcom/sec/android/glview/TwGLButton;

.field private mSlider:Lcom/sec/android/glview/TwGLSlider;

.field private mType:I

.field private mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

.field private mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f070218

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    .line 55
    const v0, 0x7f070219

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    .line 56
    const v0, 0x7f07021a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    .line 57
    const v0, 0x7f07021b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    .line 58
    const v0, 0x7f07021c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    .line 59
    const v0, 0x7f07021d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    .line 60
    const v0, 0x7f07021e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    .line 61
    const v0, 0x7f07021f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    .line 62
    const v0, 0x7f070220

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    .line 63
    const v0, 0x7f070221

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    .line 64
    const v0, 0x7f070222

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    .line 65
    const v0, 0x7f070223

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    .line 66
    const v0, 0x7f070224

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    .line 67
    const v0, 0x7f070225

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    .line 68
    const v0, 0x7f070226

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    .line 69
    const v0, 0x7f070227

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    .line 70
    const v0, 0x7f070228

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    .line 71
    const v0, 0x7f070229

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    .line 72
    const v0, 0x7f07022b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    .line 73
    const v0, 0x7f07022c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    .line 74
    const v0, 0x7f080007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    .line 75
    const v0, 0x7f07022d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    .line 76
    const v0, 0x7f07022e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_X:I

    .line 77
    const v0, 0x7f07022f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_Y:I

    .line 78
    const v0, 0x7f070230

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_WIDTH:I

    .line 79
    const v0, 0x7f070231

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    .line 80
    const v0, 0x7f070232

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    .line 81
    const v0, 0x7f070233

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    .line 82
    const v0, 0x7f070234

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_X:I

    .line 83
    const v0, 0x7f070235

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_Y:I

    .line 84
    const v0, 0x7f070236

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_WIDTH:I

    .line 85
    const v0, 0x7f070237

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_HEIGHT:I

    .line 86
    const v0, 0x7f070238

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_X:I

    .line 87
    const v0, 0x7f070239

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_Y:I

    .line 88
    const v0, 0x7f08001b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    .line 89
    const v0, 0x7f080008

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    .line 90
    const v0, 0x7f080009

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MAX_RATIO:I

    .line 91
    const v0, 0x7f07023a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    .line 92
    const v0, 0x7f07023b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 156
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 102
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    .line 159
    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v1, :cond_0

    .line 260
    :goto_1
    return-void

    .line 162
    :sswitch_0
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 164
    .local v11, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 165
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setInternalFocus(Z)V

    .line 169
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 171
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_CENTERLINE_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02018d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    .line 173
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 174
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 178
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v2, 0xe11

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 179
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MINUS_BUTTON_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_BUTTON_HEIGHT:I

    int-to-float v6, v6

    iget v7, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_PLUS_BUTTON_OFFSET_Y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v2, 0xe11

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f02018c

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setBackground(I)Z

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCenterLine:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 215
    .end local v11           #res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :sswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    .line 216
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 218
    new-instance v1, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDER_HEIGHT:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    .line 220
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MENU_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    int-to-float v6, v6

    const-string v7, "x1"

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setCenterPivot(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotateAnimation(Z)V

    .line 225
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_HEIGHT:I

    int-to-float v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MAX_RATIO:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v8, v8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setCenterPivot(Z)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setRotateAnimation(Z)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020192

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_SLIDERBAR_POX_Y:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setSliderBar(IFF)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v2, 0x7f020030

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->setGauge(IFF)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const v2, 0x7f020191

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setBackground(I)Z

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelLowText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mZoomLevelHighText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto/16 :goto_1

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0xbc1 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    return v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 414
    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 407
    :cond_0
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1
    .parameter "animation"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 338
    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    :goto_0
    return v1

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, value:I
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 364
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    :cond_2
    move v1, v2

    .line 374
    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_3

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 378
    if-lez v0, :cond_3

    .line 379
    add-int/lit8 v0, v0, -0x1

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    :cond_4
    move v1, v2

    .line 386
    goto :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0xe10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 353
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, value:I
    sparse-switch p1, :sswitch_data_0

    .line 462
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    .line 432
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 434
    if-lez v0, :cond_1

    .line 435
    add-int/lit8 v0, v0, -0x1

    .line 436
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    goto :goto_0

    .line 448
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v2, :cond_3

    .line 449
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    .line 450
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 452
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v2, :cond_4

    .line 456
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    goto :goto_0

    .line 457
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    goto :goto_0

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 418
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 476
    return-void
.end method

.method protected onShow()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 272
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->refreshMenuPosition()V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 278
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    .line 308
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, value:I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 333
    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 334
    return-void

    .line 281
    .end local v0           #value:I
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 293
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    .line 313
    .restart local v0       #value:I
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v0

    .line 318
    :goto_2
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exposure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto :goto_1

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v0

    goto :goto_2

    .line 322
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v0

    .line 327
    :goto_3
    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    goto/16 :goto_1

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v0

    goto :goto_3

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0xbc1 -> :sswitch_0
    .end sparse-switch

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :goto_0
    return v1

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public refreshMenuPosition()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, move:F
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 481
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_MENU_POS_Y:I

    int-to-float v1, v1

    const v2, 0x7f07009d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->moveLayoutAbsolute(FF)V

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 489
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 490
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    .line 492
    :cond_2
    return-void
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 127
    return-void
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    .line 264
    return-void
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    .line 268
    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    return-void
.end method
