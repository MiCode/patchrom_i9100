.class Lcom/android/sec_settings/NotificationPanel$2;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 552
    iput-object p1, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 554
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/sec_settings/NotificationPanel;->access$100(Lcom/android/sec_settings/NotificationPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0, v7}, Lcom/android/sec_settings/NotificationPanel;->access$102(Lcom/android/sec_settings/NotificationPanel;Z)Z

    .line 556
    const/4 v6, 0x0

    .line 558
    .local v6, selectedItem:I
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x14

    if-ge v6, v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/sec_settings/NotificationPanel;->access$200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/sec_settings/NotificationPanel;->access$302(Lcom/android/sec_settings/NotificationPanel;I)I

    .line 563
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/sec_settings/NotificationPanel;->access$400(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I
    invoke-static {v1}, Lcom/android/sec_settings/NotificationPanel;->access$300(Lcom/android/sec_settings/NotificationPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 565
    .local v2, data:Landroid/content/ClipData;
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    new-instance v1, Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;-><init>(Landroid/view/View;)V

    #setter for: Lcom/android/sec_settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/sec_settings/NotificationPanel;->access$502(Lcom/android/sec_settings/NotificationPanel;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

    .line 566
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel$2;->this$0:Lcom/android/sec_settings/NotificationPanel;

    #getter for: Lcom/android/sec_settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/sec_settings/NotificationPanel;->access$500(Lcom/android/sec_settings/NotificationPanel;)Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p1

    #calls: Lcom/android/sec_settings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/sec_settings/NotificationPanel;->access$600(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 569
    .end local v2           #data:Landroid/content/ClipData;
    .end local v6           #selectedItem:I
    :cond_1
    return v7

    .line 558
    .restart local v6       #selectedItem:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
