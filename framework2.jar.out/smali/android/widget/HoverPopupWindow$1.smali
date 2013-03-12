.class Landroid/widget/HoverPopupWindow$1;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$1;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->dismissPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)V

    .line 527
    return-void
.end method
