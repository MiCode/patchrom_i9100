.class Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/OriginalSettings/applications/RunningState;

.field final synthetic this$0:Lcom/android/OriginalSettings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/RunningProcessesView;Lcom/android/OriginalSettings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    .line 210
    invoke-virtual {p1}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 213
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 288
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v4, v3, Lcom/android/OriginalSettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 289
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 293
    monitor-exit v4

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 296
    .local v2, vh:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 297
    .local v1, item:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 298
    .local v0, ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    invoke-virtual {p0, p3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 278
    return-object v0

    .line 275
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 284
    return-object v0
.end method

.method refreshItems()V
    .locals 2

    .prologue
    .line 230
    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 234
    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 239
    :cond_1
    return-void

    .line 230
    .end local v0           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 217
    iput-boolean p1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 223
    :cond_0
    return-void
.end method
