.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field mBdOff:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOn:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

.field mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

.field mBitOff:Landroid/graphics/Bitmap;

.field mBitOffDisabled:Landroid/graphics/Bitmap;

.field mBitOffPressed:Landroid/graphics/Bitmap;

.field mBitOn:Landroid/graphics/Bitmap;

.field mBitOnDisabled:Landroid/graphics/Bitmap;

.field mBitOnPressed:Landroid/graphics/Bitmap;

.field mIsATT:Ljava/lang/Boolean;

.field mIsBST:Ljava/lang/Boolean;

.field mIsCDMA_US:Ljava/lang/Boolean;

.field private mIsDeviceDefaultTheme:Z

.field mIsGSM_US:Ljava/lang/Boolean;

.field mIsKorean:Ljava/lang/Boolean;

.field mIsSPR:Ljava/lang/Boolean;

.field mIsTMO:Ljava/lang/Boolean;

.field mIsUSA:Ljava/lang/Boolean;

.field mIsUSCC:Ljava/lang/Boolean;

.field mIsVMU:Ljava/lang/Boolean;

.field mIsVZW:Ljava/lang/Boolean;

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field mTextColorsOff:Landroid/content/res/ColorStateList;

.field mTextColorsOn:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final switchOff:Ljava/lang/CharSequence;

.field final switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 180
    const v0, 0x10103f2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 127
    const-string v6, "ON"

    iput-object v6, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 128
    const-string v6, "OFF"

    iput-object v6, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 152
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 159
    iput-boolean v7, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 195
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6, v8}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 196
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 197
    .local v4, res:Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, v6, Landroid/text/TextPaint;->density:F

    .line 198
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 200
    sget-object v6, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 203
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 207
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 209
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 211
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 214
    const v6, 0x108099a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    .line 215
    const v6, 0x108099c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 216
    const v6, 0x108099b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 217
    const v6, 0x10809a3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    .line 218
    const v6, 0x10809a5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    .line 219
    const v6, 0x10809a4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v6, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    .line 221
    iget-object v6, p0, Landroid/widget/Switch;->mBdOn:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    .line 222
    iget-object v6, p0, Landroid/widget/Switch;->mBdOnPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    .line 223
    iget-object v6, p0, Landroid/widget/Switch;->mBdOnDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    .line 224
    iget-object v6, p0, Landroid/widget/Switch;->mBdOff:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    .line 225
    iget-object v6, p0, Landroid/widget/Switch;->mBdOffPressed:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    .line 226
    iget-object v6, p0, Landroid/widget/Switch;->mBdOffDisabled:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    .line 228
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, buildcarrier:Ljava/lang/String;
    const-string v6, "d2spr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "goghspr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "c1spr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "t0ltespr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    move v6, v8

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsSPR:Ljava/lang/Boolean;

    .line 232
    const-string v6, "d2vzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "jaspervzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "aegis2vzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "c1vzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "espressovzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "espresso10vzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "t0ltevzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "c2vzw"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_1
    move v6, v8

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsVZW:Ljava/lang/Boolean;

    .line 233
    const-string v6, "prevail2spr"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsBST:Ljava/lang/Boolean;

    .line 234
    const-string v6, "iconvmu"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsVMU:Ljava/lang/Boolean;

    .line 235
    const-string v6, "d2usc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "t0lteusc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_2
    move v6, v8

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsUSCC:Ljava/lang/Boolean;

    .line 238
    const-string v6, "d2uc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "c1uc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "comancheuc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "expressuc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "p10lteuc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "t0lteatt"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_3
    move v6, v8

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsATT:Ljava/lang/Boolean;

    .line 239
    const-string v6, "d2tmo"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "apexqtmo"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "t0ltetmo"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_4
    move v6, v8

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsTMO:Ljava/lang/Boolean;

    .line 241
    iget-object v6, p0, Landroid/widget/Switch;->mIsSPR:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/Switch;->mIsVZW:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/Switch;->mIsBST:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/Switch;->mIsVMU:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/Switch;->mIsUSCC:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_5
    move v6, v8

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsCDMA_US:Ljava/lang/Boolean;

    .line 242
    iget-object v6, p0, Landroid/widget/Switch;->mIsATT:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroid/widget/Switch;->mIsTMO:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_6
    move v6, v8

    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsGSM_US:Ljava/lang/Boolean;

    .line 244
    iget-object v6, p0, Landroid/widget/Switch;->mIsCDMA_US:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Landroid/widget/Switch;->mIsGSM_US:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "USA"

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_7
    move v6, v8

    :goto_7
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsUSA:Ljava/lang/Boolean;

    .line 245
    const-string v6, "KOR"

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :goto_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mIsKorean:Ljava/lang/Boolean;

    .line 247
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 249
    .local v1, appearance:I
    if-eqz v1, :cond_8

    .line 250
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 252
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 255
    .local v3, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 256
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 259
    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    .line 260
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    const/4 v5, 0x0

    .line 264
    .local v5, xpp:Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10600ab

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 265
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    .line 266
    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 268
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10600aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 269
    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    .line 270
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_a
    const/4 v5, 0x0

    .line 275
    if-eqz v5, :cond_b

    :goto_9
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 277
    :cond_b
    return-void

    .end local v1           #appearance:I
    .end local v3           #config:Landroid/view/ViewConfiguration;
    .end local v5           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_c
    move v6, v7

    .line 231
    goto/16 :goto_0

    :cond_d
    move v6, v7

    .line 232
    goto/16 :goto_1

    :cond_e
    move v6, v7

    .line 235
    goto/16 :goto_2

    :cond_f
    move v6, v7

    .line 238
    goto/16 :goto_3

    :cond_10
    move v6, v7

    .line 239
    goto/16 :goto_4

    :cond_11
    move v6, v7

    .line 241
    goto/16 :goto_5

    :cond_12
    move v6, v7

    .line 242
    goto/16 :goto_6

    :cond_13
    move v6, v7

    .line 244
    goto/16 :goto_7

    :cond_14
    move v8, v7

    .line 245
    goto/16 :goto_8

    .line 275
    .restart local v1       #appearance:I
    .restart local v3       #config:Landroid/view/ViewConfiguration;
    .restart local v5       #xpp:Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_15

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_15
    throw v6

    .line 273
    :catch_0
    move-exception v6

    .line 275
    if-eqz v5, :cond_b

    goto :goto_9
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 835
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 836
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 798
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 799
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 800
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 801
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 802
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 839
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    .line 1016
    :goto_0
    return v0

    .line 1015
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1016
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 721
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 722
    iget v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 723
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 724
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 726
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 727
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter "text"

    .prologue
    .line 708
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 712
    .local v1, transformed:Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1           #transformed:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 708
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 348
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 349
    return-void

    .line 336
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 337
    goto :goto_0

    .line 340
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 341
    goto :goto_0

    .line 344
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 810
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 812
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 814
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 816
    if-eqz v0, :cond_3

    .line 818
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 819
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 820
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 821
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    move v1, v3

    .line 825
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 829
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 812
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 821
    goto :goto_1

    .line 823
    :cond_2
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 827
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1030
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1032
    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1036
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1037
    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1039
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 1040
    return-void
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1004
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 1005
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    .line 1008
    :cond_0
    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1049
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1050
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1051
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1052
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1021
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1022
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1025
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 906
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 909
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 910
    .local v11, switchLeft:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 911
    .local v14, switchTop:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 912
    .local v12, switchRight:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 914
    .local v6, switchBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v14, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 917
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v8, v11, v18

    .line 921
    .local v8, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v10, v14, v18

    .line 922
    .local v10, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v9, v12, v18

    .line 923
    .local v9, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v7, v6, v18

    .line 924
    .local v7, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14, v9, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbPosition:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 928
    .local v16, thumbPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v8, v18

    add-int v15, v18, v16

    .line 929
    .local v15, thumbLeft:I
    add-int v18, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Switch;->mThumbWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 931
    .local v17, thumbRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 934
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 935
    .local v5, rectThumb:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 938
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 939
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOn:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    .line 958
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mIsUSA:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mIsKorean:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 962
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 963
    .local v13, switchText:Landroid/text/Layout;
    :goto_1
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 966
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 999
    .end local v13           #switchText:Landroid/text/Layout;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1000
    return-void

    .line 946
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColorsOff:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_0

    .line 953
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    goto/16 :goto_0

    .line 962
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_1

    .line 968
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 969
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 971
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 975
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOn:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 977
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOnDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 980
    :cond_8
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v14

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    add-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 983
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isPressed()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffPressed:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 986
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOff:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 988
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mBitOffDisabled:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 993
    :cond_b
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 994
    .restart local v13       #switchText:Landroid/text/Layout;
    :goto_3
    add-int v18, v15, v17

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-int v19, v10, v7

    div-int/lit8 v19, v19, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 997
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 993
    .end local v13           #switchText:Landroid/text/Layout;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1056
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1057
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1058
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 1062
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1063
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1064
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 1065
    .local v2, switchText:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1066
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1067
    .local v1, oldText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    .end local v1           #oldText:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 1064
    .end local v2           #switchText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1070
    .restart local v1       #oldText:Ljava/lang/CharSequence;
    .restart local v2       #switchText:Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v0, newText:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 851
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 853
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v6

    int-to-float v6, v6

    :goto_0
    iput v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 855
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 856
    .local v4, switchRight:I
    iget v6, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v3, v4, v6

    .line 857
    .local v3, switchLeft:I
    const/4 v5, 0x0

    .line 858
    .local v5, switchTop:I
    const/4 v2, 0x0

    .line 859
    .local v2, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v6

    and-int/lit8 v6, v6, 0x70

    sparse-switch v6, :sswitch_data_0

    .line 862
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v5

    .line 863
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 878
    :goto_1
    iput v3, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 879
    iput v5, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 880
    iput v2, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 881
    iput v4, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 894
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 895
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v6, 0x120

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 897
    .local v1, isDeviceDefault:Z
    if-eqz v1, :cond_1

    .line 898
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 902
    :goto_2
    return-void

    .line 853
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #isDeviceDefault:Z
    .end local v2           #switchBottom:I
    .end local v3           #switchLeft:I
    .end local v4           #switchRight:I
    .end local v5           #switchTop:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 867
    .restart local v2       #switchBottom:I
    .restart local v3       #switchLeft:I
    .restart local v4       #switchRight:I
    .restart local v5       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v5, v6, v7

    .line 869
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v2, v5, v6

    .line 870
    goto :goto_1

    .line 873
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v7

    sub-int v2, v6, v7

    .line 874
    iget v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v5, v2, v6

    goto :goto_1

    .line 900
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #isDeviceDefault:Z
    :cond_1
    iput-boolean v8, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto :goto_2

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 579
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 580
    .local v8, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 581
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 582
    .local v9, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 585
    .local v2, heightSize:I
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v10, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 586
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v10, 0x120

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 588
    .local v3, isDeviceDefault:Z
    if-eqz v3, :cond_3

    .line 589
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    .line 594
    :goto_0
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v10, :cond_6

    .line 595
    iget-object v10, p0, Landroid/widget/Switch;->mIsKorean:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 596
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v10, :cond_0

    .line 597
    iget-object v10, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 599
    :cond_0
    iget-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v10, :cond_1

    .line 600
    iget-object v10, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 636
    :cond_1
    :goto_1
    iget-boolean v10, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    if-eqz v10, :cond_8

    .line 637
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 638
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 639
    .local v4, maxTextWidth:I
    iget v10, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v11, v4, 0x2

    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 641
    .local v7, switchWidth:I
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 642
    .local v6, switchHeight:I
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 644
    iget v10, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    iput v10, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 656
    :goto_2
    sparse-switch v8, :sswitch_data_0

    .line 670
    :goto_3
    sparse-switch v1, :sswitch_data_1

    .line 684
    :goto_4
    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 685
    iput v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 687
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 688
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v5

    .line 689
    .local v5, measuredHeight:I
    if-ge v5, v6, :cond_2

    .line 690
    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v10

    invoke-virtual {p0, v10, v6}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    .line 692
    :cond_2
    return-void

    .line 591
    .end local v4           #maxTextWidth:I
    .end local v5           #measuredHeight:I
    .end local v6           #switchHeight:I
    .end local v7           #switchWidth:I
    :cond_3
    iput-boolean v12, p0, Landroid/widget/Switch;->mIsDeviceDefaultTheme:Z

    goto/16 :goto_0

    .line 604
    :cond_4
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v10, :cond_5

    .line 605
    iget-object v10, p0, Landroid/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 607
    :cond_5
    iget-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v10, :cond_1

    .line 608
    iget-object v10, p0, Landroid/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_1

    .line 612
    :cond_6
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v10, :cond_7

    .line 613
    iget-object v10, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 615
    :cond_7
    iget-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v10, :cond_1

    .line 616
    iget-object v10, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v10}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_1

    .line 646
    :cond_8
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v11, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 647
    iget-object v10, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getWidth()I

    move-result v10

    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 648
    .restart local v4       #maxTextWidth:I
    iget v10, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v11, v4, 0x2

    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 650
    .restart local v7       #switchWidth:I
    iget-object v10, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 652
    .restart local v6       #switchHeight:I
    iget v10, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v4

    iput v10, p0, Landroid/widget/Switch;->mThumbWidth:I

    goto/16 :goto_2

    .line 658
    :sswitch_0
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 659
    goto/16 :goto_3

    .line 662
    :sswitch_1
    move v9, v7

    .line 663
    goto/16 :goto_3

    .line 672
    :sswitch_2
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 673
    goto/16 :goto_4

    .line 676
    :sswitch_3
    move v2, v6

    .line 677
    goto/16 :goto_4

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 670
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 696
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 698
    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 702
    .local v0, text:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    .end local v0           #text:Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 732
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 734
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 794
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 736
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 737
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 738
    .local v4, y:F
    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 739
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 740
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 741
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 747
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 753
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 754
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 755
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 757
    :cond_2
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 758
    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 759
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 760
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_1

    .line 767
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 768
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 769
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 771
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 772
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 773
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 774
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    goto :goto_1

    .line 784
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 785
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 788
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 789
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 747
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 844
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 845
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 846
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 847
    return-void

    .line 845
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 429
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 430
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 431
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 405
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 406
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 407
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 286
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 293
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 295
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 296
    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 302
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 304
    .local v4, ts:I
    if-eqz v4, :cond_0

    .line 305
    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 306
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 307
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 313
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 315
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 318
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 320
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 322
    .local v0, allCaps:Z
    if-eqz v0, :cond_2

    .line 323
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 324
    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 329
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    return-void

    .line 299
    .end local v0           #allCaps:Z
    .end local v3           #styleIndex:I
    .end local v4           #ts:I
    .end local v5           #typefaceIndex:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 326
    .restart local v0       #allCaps:Z
    .restart local v3       #styleIndex:I
    .restart local v4       #ts:I
    .restart local v5       #typefaceIndex:I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 389
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 390
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 392
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 393
    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    .line 395
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 358
    if-lez p2, :cond_4

    .line 359
    if-nez p1, :cond_1

    .line 360
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 365
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 367
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 368
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 369
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 370
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 376
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 362
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 367
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 370
    goto :goto_2

    .line 372
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 373
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 374
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 573
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 574
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 575
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 554
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 555
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 556
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 511
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 512
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 513
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 453
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 454
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 455
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 476
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 477
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    .line 478
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 1044
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
