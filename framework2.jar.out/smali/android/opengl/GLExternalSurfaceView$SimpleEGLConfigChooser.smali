.class Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/opengl/GLExternalSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLExternalSurfaceView;Z)V
    .locals 8
    .parameter
    .parameter "withDepthBuffer"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 827
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$SimpleEGLConfigChooser;->this$0:Landroid/opengl/GLExternalSurfaceView;

    .line 828
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLExternalSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLExternalSurfaceView;IIIIII)V

    .line 829
    return-void

    :cond_0
    move v6, v5

    .line 828
    goto :goto_0
.end method
