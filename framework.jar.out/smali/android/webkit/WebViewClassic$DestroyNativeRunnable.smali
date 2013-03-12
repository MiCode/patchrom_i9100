.class Landroid/webkit/WebViewClassic$DestroyNativeRunnable;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyNativeRunnable"
.end annotation


# instance fields
.field private mNativePtr:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "nativePtr"

    .prologue
    .line 3017
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3018
    iput p1, p0, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    .line 3019
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3024
    iget v0, p0, Landroid/webkit/WebViewClassic$DestroyNativeRunnable;->mNativePtr:I

    #calls: Landroid/webkit/WebViewClassic;->nativeDestroy(I)V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2600(I)V

    .line 3025
    return-void
.end method
