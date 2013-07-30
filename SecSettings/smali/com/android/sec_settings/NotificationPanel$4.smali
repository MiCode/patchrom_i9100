.class Lcom/android/sec_settings/NotificationPanel$4;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

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

    const/16 v5, 0x3ea

    const/4 v4, 0x0

    .line 648
    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    .line 649
    .local v2, tv:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #calls: Lcom/android/sec_settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I
    invoke-static {v3, p1, v5}, Lcom/android/sec_settings/NotificationPanel;->access$700(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;I)I

    move-result v0

    .line 650
    .local v0, dropItemPosition:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 682
    :pswitch_0
    const/4 v1, 0x1

    .line 685
    .local v1, res:Z
    :goto_0
    return v1

    .line 652
    .end local v1           #res:Z
    :pswitch_1
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #calls: Lcom/android/sec_settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V
    invoke-static {v3, p1, v5}, Lcom/android/sec_settings/NotificationPanel;->access$800(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;I)V

    .line 653
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v4}, Lcom/android/sec_settings/NotificationPanel;->access$102(Lcom/android/sec_settings/NotificationPanel;Z)Z

    .line 654
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #calls: Lcom/android/sec_settings/NotificationPanel;->SaveAppslist()V
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$900(Lcom/android/sec_settings/NotificationPanel;)V

    .line 655
    const/4 v1, 0x1

    .line 656
    .restart local v1       #res:Z
    goto :goto_0

    .line 659
    .end local v1           #res:Z
    :pswitch_2
    const/4 v1, 0x0

    .line 660
    .restart local v1       #res:Z
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mEntCnt:I
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$1000(Lcom/android/sec_settings/NotificationPanel;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$1100(Lcom/android/sec_settings/NotificationPanel;)I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 662
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$1200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f0202ac

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 663
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$1200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v4}, Lcom/android/sec_settings/NotificationPanel;->access$1100(Lcom/android/sec_settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 666
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I
    invoke-static {v3, v0}, Lcom/android/sec_settings/NotificationPanel;->access$1102(Lcom/android/sec_settings/NotificationPanel;I)I

    .line 667
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    const/4 v4, 0x1

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mEntCnt:I
    invoke-static {v3, v4}, Lcom/android/sec_settings/NotificationPanel;->access$1002(Lcom/android/sec_settings/NotificationPanel;I)I

    goto :goto_0

    .line 671
    .end local v1           #res:Z
    :pswitch_3
    const/4 v1, 0x1

    .line 672
    .restart local v1       #res:Z
    goto :goto_0

    .line 675
    .end local v1           #res:Z
    :pswitch_4
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 676
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v4}, Lcom/android/sec_settings/NotificationPanel;->access$102(Lcom/android/sec_settings/NotificationPanel;Z)Z

    .line 677
    iget-object v3, p0, Lcom/android/sec_settings/NotificationPanel$4;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/sec_settings/NotificationPanel;->access$1200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 678
    const/4 v1, 0x1

    .line 679
    .restart local v1       #res:Z
    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method
