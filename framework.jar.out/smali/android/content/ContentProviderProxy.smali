.class final Landroid/content/ContentProviderProxy;
.super Ljava/lang/Object;
.source "ContentProviderNative.java"

# interfaces
.implements Landroid/content/IContentProvider;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    .line 325
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 451
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 454
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v5, "android.content.IContentProvider"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 457
    .local v2, operation:Landroid/content/ContentProviderOperation;
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProviderOperation;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 466
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 459
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v3, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 461
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V

    .line 462
    sget-object v5, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .local v4, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v4
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 431
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 433
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 436
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 438
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 440
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 441
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 444
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 444
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 445
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "method"
    .parameter "request"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 564
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 566
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 572
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 574
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 575
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 578
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 579
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 578
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 579
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 630
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 632
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 634
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 637
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 638
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 642
    .local v0, cancellationSignal:Landroid/os/ICancellationSignal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 642
    .end local v0           #cancellationSignal:Landroid/os/ICancellationSignal;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 476
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 479
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 484
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 485
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 488
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 488
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "mimeTypeFilter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 586
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 588
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 595
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 596
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 599
    .local v1, out:[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 599
    .end local v1           #out:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 391
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 393
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 397
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 399
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 400
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 403
    .local v1, out:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 403
    .end local v1           #out:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "url"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 413
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 415
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 416
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 420
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 421
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .local v1, out:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 424
    .end local v1           #out:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 543
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 545
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 546
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 550
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 551
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 556
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 552
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 556
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 521
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 524
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 528
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 529
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .local v2, has:I
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 533
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 530
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 533
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "url"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 609
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v4, "android.content.IContentProvider"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 611
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 615
    iget-object v4, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 617
    invoke-static {v3}, Landroid/database/DatabaseUtils;->readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V

    .line 618
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .local v2, has:I
    if-eqz v2, :cond_0

    sget-object v4, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 623
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v1

    .line 619
    .end local v1           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    .end local v2           #has:I
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Landroid/database/BulkCursorToCursorAdaptor;

    invoke-direct {v0}, Landroid/database/BulkCursorToCursorAdaptor;-><init>()V

    .line 336
    .local v0, adaptor:Landroid/database/BulkCursorToCursorAdaptor;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 337
    .local v2, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 339
    .local v6, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v7, "android.content.IContentProvider"

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 342
    const/4 v5, 0x0

    .line 343
    .local v5, length:I
    if-eqz p2, :cond_0

    .line 344
    array-length v5, p2

    .line 346
    :cond_0
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 348
    aget-object v7, p2, v4

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    if-eqz p4, :cond_2

    .line 352
    array-length v5, p4

    .line 356
    :goto_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    .line 358
    aget-object v7, p4, v4

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 354
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->getObserver()Landroid/database/IContentObserver;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 362
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 364
    iget-object v7, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v6, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 366
    invoke-static {v6}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 368
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 369
    sget-object v7, Landroid/database/BulkCursorDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/BulkCursorDescriptor;

    .line 370
    .local v1, d:Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v0, v1}, Landroid/database/BulkCursorToCursorAdaptor;->initialize(Landroid/database/BulkCursorDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 383
    .end local v1           #d:Landroid/database/BulkCursorDescriptor;
    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 362
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 372
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    const/4 v0, 0x0

    goto :goto_4

    .line 376
    .end local v4           #i:I
    .end local v5           #length:I
    :catch_0
    move-exception v3

    .line 377
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 378
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    .end local v3           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v7

    .line 379
    :catch_1
    move-exception v3

    .line 380
    .local v3, ex:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Landroid/database/BulkCursorToCursorAdaptor;->close()V

    .line 381
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 496
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 498
    .local v2, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.content.IContentProvider"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 501
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 502
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Landroid/content/ContentProviderProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 507
    invoke-static {v2}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;)V

    .line 508
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 511
    .local v0, count:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 511
    .end local v0           #count:I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
