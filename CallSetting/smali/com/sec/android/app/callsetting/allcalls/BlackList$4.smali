.class Lcom/sec/android/app/callsetting/allcalls/BlackList$4;
.super Ljava/lang/Object;
.source "BlackList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/BlackList;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$900(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 338
    .local v0, checked:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v5

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I

    move-result v2

    add-int v6, v2, v1

    if-nez v0, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    .line 339
    goto :goto_1

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$900(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/CheckBox;

    move-result-object v5

    if-nez v0, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/BlackList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/BlackList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v2

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 343
    return-void

    :cond_2
    move v2, v4

    .line 341
    goto :goto_2

    :cond_3
    move v3, v4

    .line 342
    goto :goto_3
.end method
