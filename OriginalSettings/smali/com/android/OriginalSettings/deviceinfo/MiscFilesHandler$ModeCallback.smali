.class Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataCount:I

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    .line 90
    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 91
    return-void
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 175
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 176
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 177
    const/4 v3, 0x0

    .line 182
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 174
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 107
    .local v10, lv:Landroid/widget/ListView;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return v2

    .line 110
    :pswitch_0
    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 111
    .local v7, checkedItems:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v6

    .line 112
    .local v6, checkedCount:I
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-le v6, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checked item counts do not match. checkedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-lez v0, :cond_5

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v11, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v9, v0, :cond_4

    .line 119
    invoke-virtual {v7, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 123
    :cond_1
    sget-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->deleteDir(Ljava/io/File;)Z

    .line 133
    :goto_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 135
    .end local v8           #file:Ljava/io/File;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->removeAll(Ljava/util/List;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    .line 139
    .end local v9           #i:I
    .end local v11           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 148
    .end local v6           #checkedCount:I
    .end local v7           #checkedItems:Landroid/util/SparseBooleanArray;
    :pswitch_1
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    iget v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v9, v0, :cond_9

    .line 149
    invoke-virtual {v10, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    :cond_6
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 153
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    const-string v1, "/storage/sdcard0/autonavidata50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    const-string v1, "/storage/sdcard0/DioDict3B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 159
    :cond_8
    invoke-virtual {v10, v9, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_5

    .line 162
    :cond_9
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0418
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 95
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 96
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 187
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 191
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-virtual {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 192
    .local v2, lv:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 193
    .local v3, numChecked:I
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 197
    .local v0, checkedItems:Landroid/util/SparseBooleanArray;
    const-wide/16 v4, 0x0

    .line 198
    .local v4, selectedDataSize:J
    if-lez v3, :cond_1

    .line 199
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mDataCount:I

    if-ge v1, v6, :cond_1

    .line 200
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1           #i:I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    invoke-static {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getDataSize()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 101
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 102
    return v2
.end method
