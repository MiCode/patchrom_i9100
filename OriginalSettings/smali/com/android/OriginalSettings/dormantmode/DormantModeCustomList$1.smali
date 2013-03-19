.class Lcom/android/settings/dormantmode/DormantModeCustomList$1;
.super Ljava/lang/Object;
.source "DormantModeCustomList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeCustomList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeCustomList;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    #setter for: Lcom/android/settings/dormantmode/DormantModeCustomList;->mSelectedPosition:I
    invoke-static {v2, p3}, Lcom/android/settings/dormantmode/DormantModeCustomList;->access$002(Lcom/android/settings/dormantmode/DormantModeCustomList;I)I

    .line 115
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    #getter for: Lcom/android/settings/dormantmode/DormantModeCustomList;->mSelectedPosition:I
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantModeCustomList;->access$000(Lcom/android/settings/dormantmode/DormantModeCustomList;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->newInstance(I)Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    move-result-object v0

    .line 116
    .local v0, dmf:Lcom/android/settings/dormantmode/DormantModeCustomListDel;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v2}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 117
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v2}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 118
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 120
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 121
    const/4 v2, 0x1

    return v2
.end method
