.class Lcom/android/settings/NotificationPanel$3;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const v6, 0x7f02040c

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    .line 600
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 602
    .local v1, iv:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I
    invoke-static {v3, p1, v4}, Lcom/android/settings/NotificationPanel;->access$700(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)I

    move-result v0

    .line 603
    .local v0, dropItemPosition:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 637
    :pswitch_0
    const/4 v2, 0x1

    .line 640
    .local v2, res:Z
    :goto_0
    return v2

    .line 605
    .end local v2           #res:Z
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V
    invoke-static {v3, p1, v4}, Lcom/android/settings/NotificationPanel;->access$800(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V

    .line 606
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v5}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 607
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->SaveAppslist()V
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$900(Lcom/android/settings/NotificationPanel;)V

    .line 608
    const/4 v2, 0x1

    .line 609
    .restart local v2       #res:Z
    goto :goto_0

    .line 612
    .end local v2           #res:Z
    :pswitch_2
    const/4 v2, 0x0

    .line 614
    .restart local v2       #res:Z
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mEntCnt:I
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1100(Lcom/android/settings/NotificationPanel;)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 616
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0202ac

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 617
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v4}, Lcom/android/settings/NotificationPanel;->access$1100(Lcom/android/settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    :cond_0
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3, v0}, Lcom/android/settings/NotificationPanel;->access$1102(Lcom/android/settings/NotificationPanel;I)I

    .line 621
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    const/4 v4, 0x1

    #setter for: Lcom/android/settings/NotificationPanel;->mEntCnt:I
    invoke-static {v3, v4}, Lcom/android/settings/NotificationPanel;->access$1002(Lcom/android/settings/NotificationPanel;I)I

    goto :goto_0

    .line 625
    .end local v2           #res:Z
    :pswitch_3
    const/4 v2, 0x1

    .line 626
    .restart local v2       #res:Z
    goto :goto_0

    .line 629
    .end local v2           #res:Z
    :pswitch_4
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 630
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v5}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 631
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$400(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOnDragItem:I
    invoke-static {v4}, Lcom/android/settings/NotificationPanel;->access$300(Lcom/android/settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 633
    const/4 v2, 0x1

    .line 634
    .restart local v2       #res:Z
    goto/16 :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
