.class public Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSNSSettingItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_ICON_POS_Y:I = 0x0

.field public static final LIST_INCLUDE_CHECKBOX:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

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

.field public static final LIST_USERPROFILE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SEPARATOR_HEIGHT:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDim:Z

.field private mLock:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mUserIcon:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const v0, 0x7f070211

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_WIDTH:I

    .line 47
    const v0, 0x7f070106

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_HEIGHT:I

    .line 48
    const v0, 0x7f070036

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_POS_X:I

    .line 49
    const v0, 0x7f070108

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_POS_Y:I

    .line 50
    const v0, 0x7f070037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_WIDTH:I

    .line 51
    const v0, 0x7f07010a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_HEIGHT:I

    .line 52
    const v0, 0x7f07002d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    .line 53
    const v0, 0x7f07002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->CHECKBOX_POS_Y:I

    .line 54
    const v0, 0x7f070123

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->SEPARATOR_HEIGHT:I

    .line 56
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->IMAGE_ICON_POS_X:I

    .line 57
    const v0, 0x7f070035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->IMAGE_ICON_POS_Y:I

    .line 59
    const/16 v0, 0xff

    const/16 v1, 0x8

    const/16 v2, 0x83

    const/16 v3, 0xd3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 79
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 80
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 95
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 96
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 97
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 99
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    .line 100
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .locals 3
    .parameter "activityContext"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 84
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 85
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 86
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 88
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    .line 89
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .locals 8
    .parameter "glContext"

    .prologue
    const v4, 0x7f0201b9

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 79
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 80
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 107
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 110
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 111
    return-void
.end method

.method private clearContent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 175
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 177
    :cond_1
    return-void
.end method

.method private initContents(I)V
    .locals 15
    .parameter "type"

    .prologue
    .line 199
    const/4 v14, 0x0

    .line 200
    .local v14, width:F
    const/4 v13, 0x0

    .line 202
    .local v13, height:F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v0, :cond_5

    .line 203
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 209
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_7

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    .line 214
    .end local v14           #width:F
    .local v4, width:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    .line 217
    .end local v13           #height:F
    .local v5, height:F
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 220
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 227
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v0, :cond_2

    .line 228
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->CHECKBOX_X_OFFSET_FROM_RIGHT:I

    int-to-float v0, v0

    sub-float v8, v4, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->CHECKBOX_POS_Y:I

    int-to-float v9, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFIZ)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_3

    .line 233
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->IMAGE_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->IMAGE_ICON_POS_Y:I

    int-to-float v3, v3

    const v6, 0x7f020034

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 238
    new-instance v6, Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->SEPARATOR_HEIGHT:I

    int-to-float v11, v0

    const v12, 0x7f020186

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    .line 240
    :cond_4
    return-void

    .line 206
    .end local v4           #width:F
    .end local v5           #height:F
    .restart local v13       #height:F
    .restart local v14       #width:F
    :cond_5
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_0

    .line 223
    .end local v13           #height:F
    .end local v14           #width:F
    .restart local v4       #width:F
    .restart local v5       #height:F
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_2

    .end local v4           #width:F
    .end local v5           #height:F
    .restart local v13       #height:F
    .restart local v14       #width:F
    :cond_7
    move v5, v13

    .end local v13           #height:F
    .restart local v5       #height:F
    move v4, v14

    .end local v14           #width:F
    .restart local v4       #width:F
    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->clearContent()V

    .line 163
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 164
    return-void
.end method

.method public getButtonType()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x4

    const/high16 v5, 0x4000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPreviewFileReceived(I)V

    .line 357
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 344
    goto :goto_0

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_3

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRunSNSAfterConnect(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    :cond_4
    move v1, v0

    .line 357
    goto :goto_1
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
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

    .line 301
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 304
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 306
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 115
    return-void
.end method

.method public setBGImageVisibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 291
    return-void
.end method

.method public setContentType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 243
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 246
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotatable(Z)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setCenterPivot(Z)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotateAnimation(Z)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_POS_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 260
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_WIDTH:I

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const v1, 0x7f08001c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->SEPARATOR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_BUTTON_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->SEPARATOR_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayout(FF)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 279
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, v4, :cond_2

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 285
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setDim(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->resetSize()V

    goto/16 :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_TYPE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_1

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_2
.end method

.method public setDim(Z)V
    .locals 3
    .parameter "dimmed"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 123
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 124
    if-eqz p1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public setLock(Z)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 146
    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 310
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 311
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 330
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 331
    return-void

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_5

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_7

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 118
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 119
    return-void
.end method
