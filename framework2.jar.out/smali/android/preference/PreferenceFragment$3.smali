.class Landroid/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v3, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v2

    .line 396
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, selectedItem:Ljava/lang/Object;
    instance-of v3, v0, Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 398
    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->access$100(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, selectedView:Landroid/view/View;
    check-cast v0, Landroid/preference/Preference;

    .end local v0           #selectedItem:Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Landroid/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method
