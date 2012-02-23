.class public abstract Landroid/os/storage/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Landroid/os/storage/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final TRANSACTION_encryptStorage:I = 0x9

.field static final TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final TRANSACTION_getCurrentStatus:I = 0x6

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getSDCardEncryptionPrefs:I = 0xa

.field static final TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setPassword:I = 0x5

.field static final TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 250
    const-string v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IDirEncryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 241
    :cond_0
    const-string v1, "IDirEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 242
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_1

    .line 243
    check-cast v0, Landroid/os/storage/IDirEncryptService;

    goto :goto_0

    .line 245
    :cond_1
    new-instance v0, Landroid/os/storage/IDirEncryptService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 254
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v3, 0x1

    .line 261
    sparse-switch p1, :sswitch_data_0

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    .line 263
    :sswitch_0
    const-string v4, "IDirEncryptService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :sswitch_1
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v1

    .line 270
    .local v1, listener:Landroid/os/storage/IDirEncryptServiceListener;
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 275
    .end local v1           #listener:Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_2
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v1

    .line 278
    .restart local v1       #listener:Landroid/os/storage/IDirEncryptServiceListener;
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 283
    .end local v1           #listener:Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_3
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/storage/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v0

    .line 285
    .local v0, _resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 290
    .end local v0           #_resultCode:I
    :sswitch_4
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 292
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 298
    .end local v0           #_resultCode:I
    :sswitch_5
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/storage/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v0

    .line 300
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 306
    .end local v0           #_resultCode:I
    :sswitch_6
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v0

    .line 308
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 314
    .end local v0           #_resultCode:I
    :sswitch_7
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getLastError()I

    move-result v0

    .line 316
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 322
    .end local v0           #_resultCode:I
    :sswitch_8
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v0

    .line 324
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 330
    .end local v0           #_resultCode:I
    :sswitch_9
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/storage/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 332
    .restart local v0       #_resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v0           #_resultCode:I
    :sswitch_a
    const-string v4, "IDirEncryptService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 340
    .local v2, policies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {v2, p3, v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 261
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
