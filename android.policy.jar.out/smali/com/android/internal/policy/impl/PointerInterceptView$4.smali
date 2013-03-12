.class Lcom/android/internal/policy/impl/PointerInterceptView$4;
.super Ljava/lang/Object;
.source "PointerInterceptView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$4;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "PointerInterceptView"

    const-string v1, "AnimatingHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$4;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyStatusBarExpand:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$302(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 265
    return-void
.end method
