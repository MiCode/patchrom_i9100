.class Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleDataSetObserver"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCheckedId:J

.field private mListView:Landroid/widget/ListView;

.field final synthetic this$1:Landroid/webkit/WebViewClassic$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic$InvokeListBox;JLandroid/widget/ListView;Landroid/widget/Adapter;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "l"
    .parameter "a"

    .prologue
    .line 12164
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->this$1:Landroid/webkit/WebViewClassic$InvokeListBox;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 12165
    iput-wide p2, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    .line 12166
    iput-object p4, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    .line 12167
    iput-object p5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    .line 12168
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    .line 12174
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    .line 12175
    .local v4, position:I
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    .line 12176
    .local v2, id:J
    iget-wide v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    .line 12179
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->clearChoices()V

    .line 12182
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    .line 12183
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12184
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    iget-wide v7, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mCheckedId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 12185
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeListBox$SingleDataSetObserver;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 12190
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 12183
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
