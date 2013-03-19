.class public abstract Lcom/sec/android/glview/TwGLAniViewGroup;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAniViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;
    }
.end annotation


# static fields
.field public static final ANI_FINISH:I = 0xffff

.field public static final ANI_PLAY:I = 0x1

.field public static final ANI_STOP:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "TwGLAniViewGroup"


# instance fields
.field protected mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    .line 40
    return-void
.end method


# virtual methods
.method protected playAnimation(I)V
    .locals 4
    .parameter "step"

    .prologue
    const v3, 0xffff

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLAniViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 77
    return-void

    .line 54
    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    .line 61
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAlpha(F)V

    goto :goto_0

    .line 65
    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLAniViewGroup;->setAnimationStep(I)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLAniViewGroup;->setContinuousDrawMode(Z)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    invoke-interface {v0, v3}, Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;->onProgress(I)V

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract setAnimationStep(I)V
.end method

.method public setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/glview/TwGLAniViewGroup;->mOnProgressListener:Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;

    .line 36
    return-void
.end method

.method public startCustomAnimation()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    .line 44
    return-void
.end method

.method public stopCustomAnimation()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->playAnimation(I)V

    .line 48
    return-void
.end method
