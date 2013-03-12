.class final Landroid/view/GLES20Canvas$CanvasFinalizer;
.super Ljava/lang/Object;
.source "GLES20Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasFinalizer"
.end annotation


# instance fields
.field private final mRenderer:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    .line 135
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Canvas$CanvasFinalizer;->mRenderer:I

    #calls: Landroid/view/GLES20Canvas;->nDestroyRenderer(I)V
    invoke-static {v0}, Landroid/view/GLES20Canvas;->access$000(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
