.class Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;
.super Ljava/lang/Object;
.source "AllChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

.field final synthetic val$arg0:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 927
    iput-object p1, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iput p2, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->val$arg0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 930
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->val$arg0:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/fm/data/Channel;

    .line 932
    .local v1, channel:Lcom/sec/android/app/fm/data/Channel;
    iget-boolean v9, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    if-eqz v9, :cond_0

    .line 933
    const/4 v9, -0x1

    iput v9, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 934
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    .line 972
    :goto_0
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 973
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    invoke-virtual {v9}, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->notifyDataSetChanged()V

    .line 974
    :goto_1
    return-void

    .line 937
    :cond_0
    const/4 v2, 0x0

    .line 938
    .local v2, favCount:I
    const/4 v7, 0x0

    .line 939
    .local v7, newPosition:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 942
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v9, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v9, v9, Lcom/sec/android/app/fm/MainActivity;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 943
    .local v0, c:Lcom/sec/android/app/fm/data/Channel;
    iget v9, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget v9, v0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 950
    .end local v0           #c:Lcom/sec/android/app/fm/data/Channel;
    :cond_2
    const/16 v9, 0xc

    if-lt v2, v9, :cond_4

    .line 951
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v9, v9, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const v10, 0x7f0a0071

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xc

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/fm/AllChannelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 952
    .local v6, maxMsg:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v9, v9, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;
    invoke-static {v9}, Lcom/sec/android/app/fm/AllChannelActivity;->access$600(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/Toast;

    move-result-object v9

    if-nez v9, :cond_3

    .line 953
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v9, v9, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    iget-object v10, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v10, v10, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    #setter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;
    invoke-static {v9, v10}, Lcom/sec/android/app/fm/AllChannelActivity;->access$602(Lcom/sec/android/app/fm/AllChannelActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 956
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v9, v9, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;
    invoke-static {v9}, Lcom/sec/android/app/fm/AllChannelActivity;->access$600(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v9, p0, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter$1;->this$1:Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;

    iget-object v9, v9, Lcom/sec/android/app/fm/AllChannelActivity$RadioItemAdapter;->this$0:Lcom/sec/android/app/fm/AllChannelActivity;

    #getter for: Lcom/sec/android/app/fm/AllChannelActivity;->mMaxFavoriteToast:Landroid/widget/Toast;
    invoke-static {v9}, Lcom/sec/android/app/fm/AllChannelActivity;->access$600(Lcom/sec/android/app/fm/AllChannelActivity;)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 962
    .end local v6           #maxMsg:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    const/16 v9, 0xc

    if-ge v3, v9, :cond_5

    .line 963
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 964
    .local v8, temp:Ljava/lang/Integer;
    if-nez v8, :cond_6

    .line 965
    move v7, v3

    .line 969
    .end local v8           #temp:Ljava/lang/Integer;
    :cond_5
    iput v7, v1, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 970
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/sec/android/app/fm/data/Channel;->mIsFavourite:Z

    goto/16 :goto_0

    .line 962
    .restart local v8       #temp:Ljava/lang/Integer;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method
