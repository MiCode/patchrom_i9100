.class Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/HistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryListAdapter"
.end annotation


# instance fields
.field private mName:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mdate:Landroid/widget/TextView;

.field private micon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/camera/HistoryActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/HistoryActivity;Lcom/sec/android/app/camera/HistoryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;-><init>(Lcom/sec/android/app/camera/HistoryActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v0, v0, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    const v1, 0x7f0b0017

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    .line 204
    const v1, 0x7f0b0012

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mName:Landroid/widget/TextView;

    .line 205
    const v1, 0x7f0b001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    .line 206
    const v1, 0x7f0b001b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mdate:Landroid/widget/TextView;

    .line 208
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo;

    .line 210
    .local v0, infor:Lcom/samsung/dmc/ux/db/ProcessInfo;
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getStrOtherUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mdate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getCompleteTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    #getter for: Lcom/sec/android/app/camera/HistoryActivity;->done:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/HistoryActivity;->access$200(Lcom/sec/android/app/camera/HistoryActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f0201cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTotalPercent()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f02019f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .end local v0           #infor:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_2
    :goto_1
    return-object p2

    .line 216
    .restart local v0       #infor:Lcom/samsung/dmc/ux/db/ProcessInfo;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->this$0:Lcom/sec/android/app/camera/HistoryActivity;

    iget-object v1, v1, Lcom/sec/android/app/camera/HistoryActivity;->mThumbnails:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v1

    sget-object v2, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v1, v2, :cond_5

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f02019e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 223
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/dmc/ux/db/ProcessInfo;->getTaskType()Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    move-result-object v1

    sget-object v2, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    if-ne v1, v2, :cond_2

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/HistoryActivity$HistoryListAdapter;->micon:Landroid/widget/ImageView;

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
