.class public Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAudioRecIndicator.java"


# instance fields
.field private mAudioOffIcon:Lcom/sec/android/glview/TwGLImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "audio"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 16
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020041

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->mAudioOffIcon:Lcom/sec/android/glview/TwGLImage;

    .line 17
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->setAudioRecord(I)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->mAudioOffIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setAudioRecord(I)V
    .locals 2
    .parameter "audio"

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->mAudioOffIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecIndicator;->mAudioOffIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
