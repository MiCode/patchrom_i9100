.class public Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLDeviceListItem.java"

# interfaces
.implements Lcom/sec/android/app/camera/Camera$OnUserSelected;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_POS_Y:I = 0x0

.field public static final CHECKBOX_TYPE:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x0

.field public static final EDITABLESHORTCUT_TYPE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final ICON_IMAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ICON_IMAGE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ICON_IMAGE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ICON_IMAGE_WIDTH:I = 0x0

.field public static final LIST_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_TYPE_TEXT_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MENU_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final SETTINGS_TYPE:I = 0x3

.field public static final SIDEBUTTON_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwGLDeviceListItem"

#the value of this static final field might be set in the static constructor
.field public static final TITLE_HEIGHT:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1

.field private static final WAITING_ICON_IMAGE_HEIGHT:I

.field private static final WAITING_ICON_IMAGE_POS_X:I

.field private static final WAITING_ICON_IMAGE_POS_Y:I

.field private static final WAITING_ICON_IMAGE_WIDTH:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mData:Lcom/samsung/shareshot/User;

.field private mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

.field private mDataMac:Ljava/lang/String;

.field private mDim:Z

.field private mIcon:Lcom/sec/android/glview/TwGLImage;

.field private mPosition:I

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mWaiting:Z

.field private mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

.field public m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f07016c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 56
    const v0, 0x7f07016b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 58
    const v0, 0x7f070022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_X:I

    .line 59
    const v0, 0x7f070023

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_Y:I

    .line 60
    const v0, 0x7f070024

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    .line 61
    const v0, 0x7f070025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    .line 63
    const v0, 0x7f07002a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_X:I

    .line 64
    const v0, 0x7f07002b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 65
    const v0, 0x7f07002c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 66
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 67
    const v0, 0x7f07002d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 68
    const v0, 0x7f07002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_POS_Y:I

    .line 70
    const v0, 0x7f07002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    .line 71
    const v0, 0x7f070030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_POS_X:I

    .line 73
    const v0, 0x7f070026

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_X:I

    .line 74
    const v0, 0x7f070027

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_Y:I

    .line 75
    const v0, 0x7f070029

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_HEIGHT:I

    .line 76
    const v0, 0x7f070028

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_WIDTH:I

    .line 78
    const v0, 0x7f070167

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->TITLE_HEIGHT:I

    .line 79
    const v0, 0x7f070165

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->MENU_POS_X:I

    .line 80
    const v0, 0x7f070166

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->MENU_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/samsung/shareshot/User;IFF)V
    .locals 7
    .parameter "activityContext"
    .parameter "data"
    .parameter "position"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 100
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 101
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 107
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    .line 108
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 109
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mPosition:I

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->initContents()V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setContentType()V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p0, p3}, Lcom/sec/android/app/camera/Camera;->setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .parameter "glContext"

    .prologue
    const v4, 0x7f0201b9

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 100
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    .line 101
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 118
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 121
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)Lcom/samsung/shareshot/User;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->clear()V

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->clear()V

    .line 144
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 146
    :cond_2
    return-void
.end method

.method private initContents()V
    .locals 18

    .prologue
    .line 153
    const/16 v17, 0x0

    .line 154
    .local v17, width:F
    const/16 v16, 0x0

    .line 155
    .local v16, height:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v1, :cond_7

    .line 156
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v1, :cond_5

    .line 157
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getHeight()F

    move-result v6

    const v7, 0x7f0201b9

    const v8, 0x7f0201b9

    const v9, 0x7f0201b9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 163
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDim:Z

    if-nez v1, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 167
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v5

    .line 169
    .end local v17           #width:F
    .local v5, width:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v6

    .line 173
    .end local v16           #height:F
    .local v6, height:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, username:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[Unknown]"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v7, :cond_2

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    :cond_2
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 178
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 181
    .end local v7           #username:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-nez v1, :cond_4

    .line 182
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v3, v3

    sub-float v3, v5, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->CHECKBOX_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v8}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v8

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setBypassTouch(Z)V

    .line 186
    :cond_4
    new-instance v8, Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    int-to-float v13, v1

    const v14, 0x7f020186

    move v12, v5

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 187
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v8, 0x7f0201e7

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v14

    .line 191
    .local v14, iconPath:Ljava/lang/String;
    if-eqz v14, :cond_6

    .line 192
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v15, f:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    new-instance v8, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_X:I

    int-to-float v10, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_Y:I

    int-to-float v11, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    int-to-float v12, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v13, v1

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    .line 201
    .end local v15           #f:Ljava/io/File;
    :goto_2
    return-void

    .line 160
    .end local v5           #width:F
    .end local v6           #height:F
    .end local v14           #iconPath:Ljava/lang/String;
    .restart local v16       #height:F
    .restart local v17       #width:F
    :cond_5
    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getWidth()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getHeight()F

    move-result v6

    const v7, 0x7f0201b9

    const v8, 0x7f0201b9

    const v9, 0x7f0201b9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 199
    .end local v16           #height:F
    .end local v17           #width:F
    .restart local v5       #width:F
    .restart local v6       #height:F
    .restart local v14       #iconPath:Ljava/lang/String;
    :cond_6
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_POS_Y:I

    int-to-float v4, v4

    const v8, 0x7f0201ad

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    goto :goto_2

    .end local v5           #width:F
    .end local v6           #height:F
    .end local v14           #iconPath:Ljava/lang/String;
    .restart local v16       #height:F
    .restart local v17       #width:F
    :cond_7
    move/from16 v6, v16

    .end local v16           #height:F
    .restart local v6       #height:F
    move/from16 v5, v17

    .end local v17           #width:F
    .restart local v5       #width:F
    goto/16 :goto_1
.end method


# virtual methods
.method public OnRefresh()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public animationAfterClick()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string v1, "TwGLDeviceListItem"

    const-string v2, " animationAfterClick "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 313
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_X:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->MENU_POS_X:I

    add-int/2addr v4, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_POS_Y:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->TITLE_HEIGHT:I

    add-int/2addr v5, v6

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->MENU_POS_Y:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mPosition:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-float v6, v5

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 315
    .local v0, anim:Landroid/view/animation/RotateAnimation;
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->WAITING_ICON_IMAGE_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;->initialize(IIII)V

    .line 316
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 317
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 318
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 321
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaiting:Z

    if-eqz v1, :cond_1

    .line 351
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_2
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->clearContent()V

    .line 127
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 128
    return-void
.end method

.method public getData()Lcom/samsung/shareshot/User;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :goto_0
    return v3

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_2

    .line 257
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 258
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    const v4, 0x3e4ccccd

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setAlpha(F)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    move v3, v2

    .line 280
    goto :goto_0

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_2

    .line 270
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 271
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0xcc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->selectUser(Lcom/samsung/shareshot/User;Z)V

    .line 275
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->mChecked:Z

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->refreshView()V

    .line 277
    const/high16 v1, 0x3f00

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setAlpha(F)V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 275
    goto :goto_2
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 243
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 246
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 248
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f080019

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->ICON_IMAGE_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mData:Lcom/samsung/shareshot/User;

    invoke-virtual {v0}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->animationAfterClick()V

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mWaitingIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataMac:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setEnable(ZZ)V
    .locals 0
    .parameter "enable"
    .parameter "check"

    .prologue
    .line 296
    return-void
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 356
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 379
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 380
    return-void

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataButton:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 370
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    if-eqz v0, :cond_8

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 376
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setUserSelectionChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->m_UserSelectionChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;

    .line 300
    return-void
.end method
