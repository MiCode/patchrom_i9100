.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoryMearurementAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSize:J

.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V
    .locals 8
    .parameter
    .parameter "activity"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 213
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 214
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    .line 218
    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "storage_volume"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    .line 221
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v2

    .line 223
    .local v2, mMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    if-nez v2, :cond_1

    .line 230
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v4, v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    .line 225
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    .line 227
    .local v1, info:Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    iget-wide v6, v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSize()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    return-wide v0
.end method

.method public getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 240
    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 248
    :cond_0
    const-wide/16 v0, 0x0

    .line 250
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    iget-wide v0, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mId:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 274
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->this$0:Lcom/android/settings/deviceinfo/MiscFilesHandler;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0400e3

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    .line 275
    .local v3, view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getItem(I)Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-result-object v0

    .line 276
    .local v0, item:Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setFileName(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setFileSize(Ljava/lang/String;)V

    move-object v2, p3

    .line 278
    check-cast v2, Landroid/widget/ListView;

    .line 279
    .local v2, listView:Landroid/widget/ListView;
    move v1, p1

    .line 282
    .local v1, listPosition:I
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 283
    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 284
    invoke-virtual {v3, v7}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setEnabled(Z)V

    .line 325
    :goto_0
    return-object v3

    .line 290
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    const-string v5, "/storage/sdcard0/autonavidata50"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mFileName:Ljava/lang/String;

    const-string v5, "/storage/sdcard0/DioDict3B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    :cond_1
    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 294
    invoke-virtual {v3, v7}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setEnabled(Z)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    new-instance v4, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 317
    new-instance v4, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;

    invoke-direct {v4, p0, v2, v1, v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method public removeAll(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, objs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 261
    :cond_0
    return-void

    .line 257
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 258
    .local v1, o:Ljava/lang/Object;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 259
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    .end local v1           #o:Ljava/lang/Object;
    iget-wide v4, v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J

    goto :goto_0
.end method
