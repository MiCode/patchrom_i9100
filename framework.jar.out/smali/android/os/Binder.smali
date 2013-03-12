.class public Landroid/os/Binder;
.super Ljava/lang/Object;
.source "Binder.java"

# interfaces
.implements Landroid/os/IBinder;


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static final TAG:Ljava/lang/String; = "Binder"


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mObject:I

.field private mOwner:Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-direct {p0}, Landroid/os/Binder;->init()V

    .line 186
    return-void
.end method

.method public static final native clearCallingIdentity()J
.end method

.method private final native destroy()V
.end method

.method private execTransact(IIII)Z
    .locals 7
    .parameter "code"
    .parameter "dataObj"
    .parameter "replyObj"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 360
    invoke-static {p2}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v0

    .line 361
    .local v0, data:Landroid/os/Parcel;
    invoke-static {p3}, Landroid/os/Parcel;->obtain(I)Landroid/os/Parcel;

    move-result-object v3

    .line 367
    .local v3, reply:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p0, p1, v0, v3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 382
    .local v4, res:Z
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    return v4

    .line 368
    .end local v4           #res:Z
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 370
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 371
    const/4 v4, 0x1

    .line 381
    .restart local v4       #res:Z
    goto :goto_0

    .line 372
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #res:Z
    :catch_1
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 375
    const/4 v4, 0x1

    .line 381
    .restart local v4       #res:Z
    goto :goto_0

    .line 376
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v4           #res:Z
    :catch_2
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/OutOfMemoryError;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "Out of memory"

    invoke-direct {v2, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    .local v2, re:Ljava/lang/RuntimeException;
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 379
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 380
    const/4 v4, 0x1

    .restart local v4       #res:Z
    goto :goto_0
.end method

.method public static final native flushPendingCommands()V
.end method

.method public static final native getCallingPid()I
.end method

.method public static final native getCallingUid()I
.end method

.method public static final getOrigCallingUid()I
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Binder;->getOrigCallingUidNative()I

    move-result v0

    return v0
.end method

.method private static final native getOrigCallingUidNative()I
.end method

.method public static final getOrigCallingUser()I
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Binder;->getOrigCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserId;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static final native getThreadStrictModePolicy()I
.end method

.method private final native init()V
.end method

.method public static final native joinThreadPool()V
.end method

.method public static final native restoreCallingIdentity(J)V
.end method

.method public static final native setThreadStrictModePolicy(I)V
.end method


# virtual methods
.method public attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
    .locals 0
    .parameter "owner"
    .parameter "descriptor"

    .prologue
    .line 195
    iput-object p1, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 196
    iput-object p2, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    .line 197
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 314
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 277
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 278
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 280
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 291
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 292
    .local v6, fout:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 293
    .local v4, pw:Ljava/io/PrintWriter;
    new-instance v0, Landroid/os/Binder$1;

    const-string v2, "Binder.dumpAsync"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/Binder$1;-><init>(Landroid/os/Binder;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 302
    .local v0, thr:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 303
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 348
    :try_start_0
    invoke-direct {p0}, Landroid/os/Binder;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public isBinderAlive()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 337
    return-void
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 244
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    :goto_0
    return v2

    .line 247
    :cond_0
    const v3, 0x5f444d50

    if-ne p1, v3, :cond_3

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 249
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, args:[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 252
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Landroid/os/Binder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v2

    .line 255
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    :goto_2
    throw v2

    .line 265
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    goto :goto_0

    .line 269
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 256
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public pingBinder()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 1
    .parameter "descriptor"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/os/Binder;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/os/Binder;->mOwner:Landroid/os/IInterface;

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 323
    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 327
    .local v0, r:Z
    if-eqz p3, :cond_1

    .line 328
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 330
    :cond_1
    return v0
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    .locals 1
    .parameter "recipient"
    .parameter "flags"

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method
