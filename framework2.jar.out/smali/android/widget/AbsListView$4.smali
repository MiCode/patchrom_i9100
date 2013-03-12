.class Landroid/widget/AbsListView$4;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 7114
    iput-object p1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 7116
    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMotionEnable:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4400(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4500(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7132
    :cond_0
    :goto_0
    return-void

    .line 7120
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 7121
    .local v0, motion:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7123
    :pswitch_0
    const-string v1, "[Motion-DoubleTap]"

    #calls: Landroid/widget/AbsListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4600(Ljava/lang/String;)V

    .line 7124
    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    .line 7125
    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 7127
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView$4;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 7121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
