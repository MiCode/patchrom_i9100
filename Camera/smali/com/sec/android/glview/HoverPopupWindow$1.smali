.class Lcom/sec/android/glview/HoverPopupWindow$1;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/HoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/sec/android/glview/HoverPopupWindow$1;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$1;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v0, v0, Lcom/sec/android/glview/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "HoverPopupWindow"

    const-string v1, "Popup is not showing!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/HoverPopupWindow$1;->this$0:Lcom/sec/android/glview/HoverPopupWindow;

    #calls: Lcom/sec/android/glview/HoverPopupWindow;->dismissPopup()V
    invoke-static {v0}, Lcom/sec/android/glview/HoverPopupWindow;->access$000(Lcom/sec/android/glview/HoverPopupWindow;)V

    .line 545
    return-void
.end method
