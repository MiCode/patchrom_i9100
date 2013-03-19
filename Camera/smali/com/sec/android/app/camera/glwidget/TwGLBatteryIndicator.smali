.class public Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLBatteryIndicator.java"


# static fields
.field public static final CHARGING:I = 0x6

.field public static final LEVEL_0:I = 0x0

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_3:I = 0x3

.field public static final LEVEL_4:I = 0x4

.field public static final LEVEL_5:I = 0x5

.field public static final MAX_LEVEL:I = 0x6


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 5
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 18
    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    .line 23
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020035

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 24
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020036

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 25
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020037

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 26
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020038

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 27
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020039

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 28
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003a

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 29
    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02003b

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 36
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 42
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method
