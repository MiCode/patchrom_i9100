.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 90
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 379
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 557
    sput v2, Landroid/view/PointerIcon;->mIconType:I

    .line 559
    const/4 v0, 0x0

    sput-object v0, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 560
    sput v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 562
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 563
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    .line 121
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .parameter "bitmap"
    .parameter "hotSpotX"
    .parameter "hotSpotY"

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 238
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 239
    .local v0, icon:Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 240
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 241
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 242
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    .prologue
    .line 788
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    .line 790
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 792
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 10
    .parameter "context"
    .parameter "style"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x2711

    const/4 v6, -0x1

    const/16 v7, 0x3e8

    .line 157
    if-nez p0, :cond_0

    .line 158
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 162
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 216
    :goto_0
    return-object v4

    .line 166
    :cond_1
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 167
    sput-object p0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    .line 170
    :cond_2
    if-ne p1, v5, :cond_5

    .line 171
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-nez v4, :cond_5

    .line 172
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    .line 173
    const-string v4, "PointerIcon"

    const-string v5, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {p0, v7}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_3
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_4

    .line 178
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 180
    :cond_4
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 185
    :cond_5
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 187
    .local v3, styleIndex:I
    if-nez v3, :cond_6

    if-eq p1, v5, :cond_6

    .line 188
    invoke-static {v7}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 193
    :cond_6
    if-ne p1, v5, :cond_7

    .line 194
    sget-object v4, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v5, 0x101045f

    invoke-virtual {p0, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 196
    .local v2, resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    :goto_1
    if-ne v2, v6, :cond_9

    .line 206
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-ne p1, v7, :cond_8

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_0

    .line 198
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #resourceId:I
    :cond_7
    sget-object v4, Lcom/android/internal/R$styleable;->Pointer:[I

    const v5, 0x10103f3

    invoke-virtual {p0, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 202
    .restart local v2       #resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 207
    :cond_8
    invoke-static {p0, v7}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 210
    :cond_9
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 211
    .local v1, icon:Landroid/view/PointerIcon;
    const/high16 v4, -0x100

    and-int/2addr v4, v2

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_a

    .line 212
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_2
    move-object v4, v1

    .line 216
    goto/16 :goto_0

    .line 214
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    goto :goto_2
.end method

.method private static getSystemIconStyleIndex(I)I
    .locals 7
    .parameter "style"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 493
    sparse-switch p0, :sswitch_data_0

    .line 547
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 497
    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 499
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 501
    goto :goto_0

    .line 504
    :sswitch_4
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSystemIconStyleIndex style: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    packed-switch v4, :pswitch_data_0

    .line 544
    const/16 v0, 0x9

    goto :goto_0

    .line 507
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 509
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 511
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 513
    :pswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 515
    :pswitch_5
    const/16 v0, 0xf

    goto :goto_0

    .line 517
    :pswitch_6
    const/16 v0, 0x10

    goto :goto_0

    .line 519
    :pswitch_7
    const/16 v0, 0x11

    goto :goto_0

    .line 521
    :pswitch_8
    const/16 v0, 0x12

    goto :goto_0

    .line 523
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 527
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 529
    goto :goto_0

    :pswitch_c
    move v0, v3

    .line 531
    goto :goto_0

    .line 533
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_0

    .line 535
    :pswitch_e
    const/4 v0, 0x5

    goto :goto_0

    .line 537
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_0

    .line 539
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_0

    .line 541
    :pswitch_11
    const/16 v0, 0x8

    goto :goto_0

    .line 493
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch

    .line 505
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method static getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 779
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 781
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sWindowManager:Landroid/view/IWindowManager;

    .line 783
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sWindowManager:Landroid/view/IWindowManager;

    monitor-exit v1

    return-object v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 272
    .local v0, icon:Landroid/view/PointerIcon;
    invoke-direct {v0, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    .line 273
    return-object v0
.end method

.method private loadResource(Landroid/content/res/Resources;I)V
    .locals 9
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 448
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 453
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 455
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 457
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 458
    .local v1, bitmapRes:I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 459
    .local v4, hotSpotX:F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 460
    .local v5, hotSpotY:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 467
    if-nez v1, :cond_0

    .line 468
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 461
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #bitmapRes:I
    .end local v4           #hotSpotX:F
    .end local v5           #hotSpotY:F
    :catch_0
    move-exception v3

    .line 462
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 471
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #bitmapRes:I
    .restart local v4       #hotSpotX:F
    .restart local v5       #hotSpotY:F
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 472
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_1

    .line 473
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 478
    :cond_1
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 479
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 480
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 481
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 578
    const-string v5, "PointerIcon"

    const-string/jumbo v6, "registerHoveringSpenCustomIcon"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/hardware/input/IInputManager;->isShowHoveringPointer()Z

    move-result v5

    if-nez v5, :cond_0

    .line 603
    :goto_0
    return v4

    .line 582
    :cond_0
    if-nez p0, :cond_1

    .line 583
    const-string v5, "PointerIcon"

    const-string/jumbo v6, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 590
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 591
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 593
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_2

    .line 597
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/16 v4, 0x64

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 599
    .local v3, scale:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 600
    .local v2, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 601
    move-object v0, v2

    .line 603
    .end local v2           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_2
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/IWindowManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .locals 3
    .parameter "customIconId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 613
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->removeHoveringSpenCustomIcon(I)V

    .line 615
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 2
    .parameter "IconId"
    .parameter "bitmap"

    .prologue
    .line 757
    move v0, p0

    .line 760
    .local v0, iReaIconId:I
    if-gez v0, :cond_0

    .line 761
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 763
    :cond_0
    if-gez v0, :cond_1

    .line 764
    const/4 v0, 0x0

    .line 767
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 768
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 771
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 772
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 774
    :cond_3
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 775
    return v0
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x5

    .line 738
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    if-lt v0, v1, :cond_2

    .line 739
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 743
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 744
    new-array v0, v1, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 746
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 747
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 749
    :cond_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 750
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    return v0

    .line 741
    :cond_2
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 8
    .parameter "iconType"
    .parameter "customIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 653
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/input/IInputManager;->isShowHoveringPointer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    const/4 v3, -0x1

    .line 676
    :goto_0
    return v3

    .line 659
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 662
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 663
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 665
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_1

    .line 669
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-static {v0, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 672
    .local v2, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    move-object v0, v2

    .line 676
    .end local v2           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x2711

    const/4 v5, 0x0

    invoke-interface {v3, v4, p0, v0, v5}, Landroid/view/IWindowManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;)I

    move-result v3

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 8
    .parameter "iconType"
    .parameter "customIcon"
    .parameter "hotSpotPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 688
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/input/IInputManager;->isShowHoveringPointer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 690
    const/4 v3, -0x1

    .line 710
    :goto_0
    return v3

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 696
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 697
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 699
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x9c40

    if-le v3, v4, :cond_1

    .line 703
    const-string v3, "PointerIcon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-static {v0, v7, v7, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 706
    .local v2, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 707
    move-object v0, v2

    .line 710
    .end local v2           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v3

    const/16 v4, 0x2711

    invoke-interface {v3, v4, p0, v0, p2}, Landroid/view/IWindowManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;)I

    move-result v3

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(II)V
    .locals 3
    .parameter "iconType"
    .parameter "customIconId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isShowHoveringPointer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, p1, v2}, Landroid/view/IWindowManager;->reloadPointerIcon(IIILandroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .locals 2
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "hotSpotPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isShowHoveringPointer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-interface {v0, v1, p0, p1, p2}, Landroid/view/IWindowManager;->reloadPointerIcon(IIILandroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .locals 4
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "hotSpotPoint"

    .prologue
    const/4 v0, 0x0

    .line 716
    sget v1, Landroid/view/PointerIcon;->mIconType:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/PointerIcon;->mIconType:I

    if-ne v1, p0, :cond_0

    .line 717
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_0
    return v0

    .line 720
    :cond_0
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 721
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 722
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 723
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    .line 724
    sget-object v1, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v0, :cond_1

    .line 726
    new-instance v0, Landroid/view/PointerIcon$HoverEffect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 728
    :cond_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v0, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V

    .line 729
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v0, p0}, Landroid/view/PointerIcon$HoverEffect;->playVibrator(I)V

    .line 732
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private throwIfIconIsNotLoaded()V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .parameter "bitmap"
    .parameter "hotSpotX"
    .parameter "hotSpotY"

    .prologue
    const/4 v1, 0x0

    .line 484
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 488
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-ne p0, p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v1

    .line 428
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 429
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 432
    check-cast v0, Landroid/view/PointerIcon;

    .line 433
    .local v0, otherIcon:Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mStyle:I

    iget v4, v0, Landroid/view/PointerIcon;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 435
    goto :goto_0

    .line 438
    :cond_5
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 441
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 342
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 356
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 370
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullIcon()Z
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .parameter "context"

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, p0

    .line 299
    :goto_0
    return-object v0

    .line 296
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 297
    .local v0, result:Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 410
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-eqz v0, :cond_0

    .line 413
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 416
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 417
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 420
    :cond_0
    return-void
.end method
