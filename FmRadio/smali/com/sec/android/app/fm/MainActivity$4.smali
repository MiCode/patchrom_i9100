.class Lcom/sec/android/app/fm/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 954
    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/fm/MainActivity;->mPrevDown:Z

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/fm/MainActivity$4;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iput-boolean v2, v0, Lcom/sec/android/app/fm/MainActivity;->mNextDown:Z

    .line 959
    :cond_1
    return v2
.end method
