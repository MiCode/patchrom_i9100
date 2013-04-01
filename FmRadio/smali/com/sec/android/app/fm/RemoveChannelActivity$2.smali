.class Lcom/sec/android/app/fm/RemoveChannelActivity$2;
.super Ljava/lang/Object;
.source "RemoveChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RemoveChannelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RemoveChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$100(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #setter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #calls: Lcom/sec/android/app/fm/RemoveChannelActivity;->makeAllSelection(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelected:Z
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$400(Lcom/sec/android/app/fm/RemoveChannelActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 187
    .local v0, menuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 197
    .end local v0           #menuItem:Landroid/view/MenuItem;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$000(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->invalidateOptionsMenu()V

    .line 199
    return-void

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #setter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mSelectAll:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$102(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)Z

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #calls: Lcom/sec/android/app/fm/RemoveChannelActivity;->makeAllSelection(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$200(Lcom/sec/android/app/fm/RemoveChannelActivity;Z)V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->cbSelectAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$300(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/view/Menu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/fm/RemoveChannelActivity$2;->this$0:Lcom/sec/android/app/fm/RemoveChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RemoveChannelActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v1}, Lcom/sec/android/app/fm/RemoveChannelActivity;->access$500(Lcom/sec/android/app/fm/RemoveChannelActivity;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    .restart local v0       #menuItem:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
