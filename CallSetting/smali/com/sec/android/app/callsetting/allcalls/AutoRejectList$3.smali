.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->AutoRejectEventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 376
    .local v0, checked:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->list:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 378
    goto :goto_1

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$3;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v5, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->selectAllCheck:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 383
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 384
    return-void

    :cond_2
    move v2, v4

    .line 381
    goto :goto_2

    :cond_3
    move v3, v4

    .line 383
    goto :goto_3
.end method
