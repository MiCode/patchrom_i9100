.class public Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLStorageIndicator.java"


# instance fields
.field private mMMCIcon:Lcom/sec/android/glview/TwGLImage;

.field private mPhoneIcon:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "storage"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 17
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020042

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mPhoneIcon:Lcom/sec/android/glview/TwGLImage;

    .line 18
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020043

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mMMCIcon:Lcom/sec/android/glview/TwGLImage;

    .line 19
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->setStorage(I)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mPhoneIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mMMCIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 23
    return-void
.end method


# virtual methods
.method public setStorage(I)V
    .locals 3
    .parameter "storage"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 26
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mPhoneIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mMMCIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mPhoneIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStorageIndicator;->mMMCIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
