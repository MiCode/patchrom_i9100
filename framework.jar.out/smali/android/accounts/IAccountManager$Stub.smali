.class public abstract Landroid/accounts/IAccountManager$Stub;
.super Landroid/os/Binder;
.source "IAccountManager.java"

# interfaces
.implements Landroid/accounts/IAccountManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountManager"

.field static final TRANSACTION_addAccount:I = 0x7

.field static final TRANSACTION_addAcount:I = 0x11

.field static final TRANSACTION_clearPassword:I = 0xd

.field static final TRANSACTION_confirmCredentials:I = 0x14

.field static final TRANSACTION_editProperties:I = 0x13

.field static final TRANSACTION_getAccounts:I = 0x4

.field static final TRANSACTION_getAccountsByFeatures:I = 0x6

.field static final TRANSACTION_getAuthToken:I = 0x10

.field static final TRANSACTION_getAuthTokenLabel:I = 0x15

.field static final TRANSACTION_getAuthenticatorTypes:I = 0x3

.field static final TRANSACTION_getPassword:I = 0x1

.field static final TRANSACTION_getUserData:I = 0x2

.field static final TRANSACTION_hasFeatures:I = 0x5

.field static final TRANSACTION_invalidateAuthToken:I = 0x9

.field static final TRANSACTION_peekAuthToken:I = 0xa

.field static final TRANSACTION_removeAccount:I = 0x8

.field static final TRANSACTION_setAuthToken:I = 0xb

.field static final TRANSACTION_setPassword:I = 0xc

.field static final TRANSACTION_setUserData:I = 0xe

.field static final TRANSACTION_updateAppPermission:I = 0xf

.field static final TRANSACTION_updateCredentials:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.accounts.IAccountManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accounts/IAccountManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/accounts/IAccountManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/accounts/IAccountManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/accounts/IAccountManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 416
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 59
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v7           #_result:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_1

    .line 66
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_2
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 75
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_2

    .line 83
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_3
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/accounts/IAccountManager$Stub;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v7

    .line 85
    .local v7, _result:[Landroid/accounts/AuthenticatorDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 91
    .end local v7           #_result:[Landroid/accounts/AuthenticatorDescription;
    :sswitch_4
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 95
    .local v7, _result:[Landroid/accounts/Account;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 101
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:[Landroid/accounts/Account;
    :sswitch_5
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 105
    .local v1, _arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 112
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_3

    .line 119
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    :sswitch_6
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 123
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3       #_arg2:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:[Ljava/lang/String;
    :sswitch_7
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 135
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 141
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 144
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 149
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->addAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    .line 150
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v7           #_result:Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_4

    .line 147
    .restart local v2       #_arg1:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_5

    .line 156
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_8
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 160
    .local v1, _arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 166
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 164
    .end local v2           #_arg1:Landroid/accounts/Account;
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_6

    .line 172
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    :sswitch_9
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 192
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_7

    .line 200
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_b
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 209
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_8

    .line 218
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_c
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 221
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 227
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountManager$Stub;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 224
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_9

    .line 234
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_d
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 242
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_a
    invoke-virtual {p0, v1}, Landroid/accounts/IAccountManager$Stub;->clearPassword(Landroid/accounts/Account;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 240
    .end local v1           #_arg0:Landroid/accounts/Account;
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_a

    .line 248
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_e
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 251
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 257
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 254
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_b

    .line 266
    .end local v1           #_arg0:Landroid/accounts/Account;
    :sswitch_f
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    .line 269
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 275
    .restart local v1       #_arg0:Landroid/accounts/Account;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 279
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v4, v8

    .line 280
    .local v4, _arg3:Z
    :goto_d
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 272
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;
    goto :goto_c

    .restart local v2       #_arg1:Ljava/lang/String;
    .restart local v3       #_arg2:I
    :cond_d
    move v4, v0

    .line 279
    goto :goto_d

    .line 286
    .end local v1           #_arg0:Landroid/accounts/Account;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_10
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 290
    .local v1, _arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    .line 291
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 297
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v4, v8

    .line 301
    .restart local v4       #_arg3:Z
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    move v5, v8

    .line 303
    .local v5, _arg4:Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 304
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .local v6, _arg5:Landroid/os/Bundle;
    :goto_11
    move-object v0, p0

    .line 309
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 294
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_e

    .restart local v3       #_arg2:Ljava/lang/String;
    :cond_f
    move v4, v0

    .line 299
    goto :goto_f

    .restart local v4       #_arg3:Z
    :cond_10
    move v5, v0

    .line 301
    goto :goto_10

    .line 307
    .restart local v5       #_arg4:Z
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/os/Bundle;
    goto :goto_11

    .line 315
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :sswitch_11
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 319
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, _arg3:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    move v5, v8

    .line 327
    .restart local v5       #_arg4:Z
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 328
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .restart local v6       #_arg5:Landroid/os/Bundle;
    :goto_13
    move-object v0, p0

    .line 333
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/IAccountManager$Stub;->addAcount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :cond_12
    move v5, v0

    .line 325
    goto :goto_12

    .line 331
    .restart local v5       #_arg4:Z
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/os/Bundle;
    goto :goto_13

    .line 339
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[Ljava/lang/String;
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:Landroid/os/Bundle;
    :sswitch_12
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 343
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    .line 344
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 350
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    move v4, v8

    .line 354
    .local v4, _arg3:Z
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 355
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, _arg4:Landroid/os/Bundle;
    :goto_16
    move-object v0, p0

    .line 360
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountManager$Stub;->updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 347
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Landroid/os/Bundle;
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_14

    .restart local v3       #_arg2:Ljava/lang/String;
    :cond_15
    move v4, v0

    .line 352
    goto :goto_15

    .line 358
    .restart local v4       #_arg3:Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;
    goto :goto_16

    .line 366
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Z
    .end local v5           #_arg4:Landroid/os/Bundle;
    :sswitch_13
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 370
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_17

    move v3, v8

    .line 373
    .local v3, _arg2:Z
    :goto_17
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_17
    move v3, v0

    .line 372
    goto :goto_17

    .line 379
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v9, "android.accounts.IAccountManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 383
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_18

    .line 384
    sget-object v9, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 390
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19

    .line 391
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 397
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    move v4, v8

    .line 398
    .restart local v4       #_arg3:Z
    :goto_1a
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountManager$Stub;->confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 387
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Landroid/os/Bundle;
    .end local v4           #_arg3:Z
    :cond_18
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;
    goto :goto_18

    .line 394
    :cond_19
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;
    goto :goto_19

    :cond_1a
    move v4, v0

    .line 397
    goto :goto_1a

    .line 404
    .end local v1           #_arg0:Landroid/accounts/IAccountManagerResponse;
    .end local v2           #_arg1:Landroid/accounts/Account;
    .end local v3           #_arg2:Landroid/os/Bundle;
    :sswitch_15
    const-string v0, "android.accounts.IAccountManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManagerResponse;

    move-result-object v1

    .line 408
    .restart local v1       #_arg0:Landroid/accounts/IAccountManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountManager$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
