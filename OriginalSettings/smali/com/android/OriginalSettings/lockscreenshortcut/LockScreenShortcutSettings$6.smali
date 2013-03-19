.class Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;
.super Ljava/lang/Object;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 847
    move-object v0, p1

    check-cast v0, Lcom/android/settings/lockscreenshortcut/DeleteView;

    .line 848
    .local v0, dv:Lcom/android/settings/lockscreenshortcut/DeleteView;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 895
    :goto_0
    return v4

    .line 850
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 851
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V

    .line 852
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setShadowVisibility(Z)V

    .line 854
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f02048b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I

    move-result v2

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V
    invoke-static {v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)V

    .line 858
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 859
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    .line 860
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    .line 861
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z

    move-result v2

    #calls: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V

    .line 862
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #setter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z
    invoke-static {v1, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$1302(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z

    goto :goto_0

    .line 867
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->releaseSurface()V

    .line 871
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 872
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    goto :goto_0

    .line 876
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 879
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V

    .line 880
    const v1, 0x7f02031f

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 884
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 885
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;->this$0:Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;

    #getter for: Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setOnDelete(Z)V

    .line 887
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->stopTrashCanShakeAnimation()V

    .line 888
    invoke-virtual {v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setNormalTrashIcon()V

    .line 889
    const v1, 0x7f020321

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 848
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
