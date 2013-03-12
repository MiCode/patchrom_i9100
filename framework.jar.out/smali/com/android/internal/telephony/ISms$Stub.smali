.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_copyMessageToIccEf:I = 0x5

.field static final TRANSACTION_disableCellBroadcast:I = 0x10

.field static final TRANSACTION_disableCellBroadcastRange:I = 0x12

.field static final TRANSACTION_enableCellBroadcast:I = 0xf

.field static final TRANSACTION_enableCellBroadcastRange:I = 0x11

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getCbSettings:I = 0x17

.field static final TRANSACTION_getMessagesFromIccEf:I = 0x2

.field static final TRANSACTION_getSMSAvailable:I = 0x14

.field static final TRANSACTION_getSMSPAvailable:I = 0x15

.field static final TRANSACTION_getSimFullStatus:I = 0x16

.field static final TRANSACTION_resetSimFullStatus:I = 0x18

.field static final TRANSACTION_sendData:I = 0x6

.field static final TRANSACTION_sendDatawithOrigPort:I = 0x7

.field static final TRANSACTION_sendMultipartText:I = 0xe

.field static final TRANSACTION_sendMultipartTextwithCBP:I = 0xd

.field static final TRANSACTION_sendMultipartTextwithOptions:I = 0x13

.field static final TRANSACTION_sendOTADomestic:I = 0xc

.field static final TRANSACTION_sendText:I = 0x8

.field static final TRANSACTION_sendTextwithCBP:I = 0x9

.field static final TRANSACTION_sendTextwithOptions:I = 0xa

.field static final TRANSACTION_sendTextwithOptionsReadconfirm:I = 0xb

.field static final TRANSACTION_sendscptResult:I = 0x19

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x4

.field static final TRANSACTION_updateSmsServiceCenterOnSimEf:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/ISms;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 495
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 55
    :sswitch_0
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v24

    .line 62
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 64
    const/4 v2, 0x1

    goto :goto_0

    .line 68
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_2
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 71
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->getMessagesFromIccEf(I)[B

    move-result-object v23

    .line 72
    .local v23, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 74
    const/4 v2, 0x1

    goto :goto_0

    .line 78
    .end local v3           #_arg0:I
    .end local v23           #_result:[B
    :sswitch_3
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 81
    .local v3, _arg0:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->updateSmsServiceCenterOnSimEf([B)Z

    move-result v23

    .line 82
    .local v23, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v23, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 88
    .end local v3           #_arg0:[B
    .end local v23           #_result:Z
    :sswitch_4
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 95
    .local v5, _arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(II[B)Z

    move-result v23

    .line 96
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v23, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 97
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 102
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:[B
    .end local v23           #_result:Z
    :sswitch_5
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 108
    .local v4, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 109
    .restart local v5       #_arg2:[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(I[B[B)Z

    move-result v23

    .line 110
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v23, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 111
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 116
    .end local v3           #_arg0:I
    .end local v4           #_arg1:[B
    .end local v5           #_arg2:[B
    .end local v23           #_result:Z
    :sswitch_6
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 124
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 126
    .local v6, _arg3:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 133
    .local v7, _arg4:Landroid/app/PendingIntent;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .local v8, _arg5:Landroid/app/PendingIntent;
    :goto_5
    move-object/from16 v2, p0

    .line 139
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/ISms$Stub;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 130
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_4

    .line 137
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_5

    .line 145
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:[B
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    :sswitch_7
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 155
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 157
    .local v7, _arg4:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 164
    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, _arg6:Landroid/app/PendingIntent;
    :goto_7
    move-object/from16 v2, p0

    .line 170
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendDatawithOrigPort(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 161
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_6

    .line 168
    :cond_6
    const/4 v9, 0x0

    .restart local v9       #_arg6:Landroid/app/PendingIntent;
    goto :goto_7

    .line 176
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:I
    .end local v6           #_arg3:I
    .end local v7           #_arg4:[B
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    :sswitch_8
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 191
    .local v6, _arg3:Landroid/app/PendingIntent;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .local v7, _arg4:Landroid/app/PendingIntent;
    :goto_9
    move-object/from16 v2, p0

    .line 197
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ISms$Stub;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 188
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :cond_7
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_8

    .line 195
    :cond_8
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_9

    .line 203
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :sswitch_9
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 209
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 218
    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 219
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 225
    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg6:I
    move-object/from16 v2, p0

    .line 228
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 215
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v9           #_arg6:I
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_a

    .line 222
    :cond_a
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_b

    .line 234
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :sswitch_a
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 243
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 249
    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 256
    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v8, 0x1

    .line 258
    .local v8, _arg5:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 260
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 262
    .local v10, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg8:I
    move-object/from16 v2, p0

    .line 263
    invoke-virtual/range {v2 .. v11}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_c

    .line 253
    :cond_c
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_d

    .line 256
    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    .line 269
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :sswitch_b
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 275
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 277
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    .line 278
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 284
    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    .line 285
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 291
    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    .line 293
    .restart local v8       #_arg5:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 295
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 297
    .restart local v10       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 299
    .restart local v11       #_arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .local v12, _arg9:I
    move-object/from16 v2, p0

    .line 300
    invoke-virtual/range {v2 .. v12}, Lcom/android/internal/telephony/ISms$Stub;->sendTextwithOptionsReadconfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 281
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    .end local v12           #_arg9:I
    :cond_e
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;
    goto :goto_f

    .line 288
    :cond_f
    const/4 v7, 0x0

    .restart local v7       #_arg4:Landroid/app/PendingIntent;
    goto :goto_10

    .line 291
    :cond_10
    const/4 v8, 0x0

    goto :goto_11

    .line 306
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Landroid/app/PendingIntent;
    .end local v7           #_arg4:Landroid/app/PendingIntent;
    :sswitch_c
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/ISms$Stub;->sendOTADomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 319
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    :sswitch_d
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 327
    .local v16, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 329
    .local v17, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 331
    .local v18, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg6:I
    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 334
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithCBP(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 340
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v9           #_arg6:I
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_e
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 346
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 348
    .restart local v16       #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 350
    .restart local v17       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .restart local v18       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    .line 351
    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 357
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_f
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 360
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcast(I)Z

    move-result v23

    .line 361
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v23, :cond_11

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 362
    :cond_11
    const/4 v2, 0x0

    goto :goto_12

    .line 367
    .end local v3           #_arg0:I
    .end local v23           #_result:Z
    :sswitch_10
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcast(I)Z

    move-result v23

    .line 371
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v23, :cond_12

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    :cond_12
    const/4 v2, 0x0

    goto :goto_13

    .line 377
    .end local v3           #_arg0:I
    .end local v23           #_result:Z
    :sswitch_11
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 382
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->enableCellBroadcastRange(II)Z

    move-result v23

    .line 383
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v23, :cond_13

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 384
    :cond_13
    const/4 v2, 0x0

    goto :goto_14

    .line 389
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v23           #_result:Z
    :sswitch_12
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 393
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 394
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/ISms$Stub;->disableCellBroadcastRange(II)Z

    move-result v23

    .line 395
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v23, :cond_14

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 396
    :cond_14
    const/4 v2, 0x0

    goto :goto_15

    .line 401
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v23           #_result:Z
    :sswitch_13
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 409
    .restart local v16       #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 411
    .restart local v17       #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v18

    .line 413
    .restart local v18       #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v8, 0x1

    .line 415
    .local v8, _arg5:Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 417
    .restart local v9       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 419
    .restart local v10       #_arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11       #_arg8:I
    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    .line 420
    invoke-virtual/range {v13 .. v22}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 413
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:I
    .end local v10           #_arg7:I
    .end local v11           #_arg8:I
    :cond_15
    const/4 v8, 0x0

    goto :goto_16

    .line 426
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v16           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v18           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_14
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSAvailable()Z

    move-result v23

    .line 428
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v23, :cond_16

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 429
    :cond_16
    const/4 v2, 0x0

    goto :goto_17

    .line 434
    .end local v23           #_result:Z
    :sswitch_15
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSMSPAvailable()Z

    move-result v23

    .line 436
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v23, :cond_17

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 437
    :cond_17
    const/4 v2, 0x0

    goto :goto_18

    .line 442
    .end local v23           #_result:Z
    :sswitch_16
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getSimFullStatus()Z

    move-result v23

    .line 444
    .restart local v23       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v23, :cond_18

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 445
    :cond_18
    const/4 v2, 0x0

    goto :goto_19

    .line 450
    .end local v23           #_result:Z
    :sswitch_17
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->getCbSettings()[B

    move-result-object v23

    .line 452
    .local v23, _result:[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 454
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 458
    .end local v23           #_result:[B
    :sswitch_18
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISms$Stub;->resetSimFullStatus()V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 465
    :sswitch_19
    const-string v2, "com.android.internal.telephony.ISms"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 469
    .restart local v3       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 471
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 473
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 475
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 477
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    .line 478
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 484
    .local v8, _arg5:Landroid/app/PendingIntent;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 485
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, _arg6:Landroid/app/PendingIntent;
    :goto_1b
    move-object/from16 v2, p0

    .line 490
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/ISms$Stub;->sendscptResult(Ljava/lang/String;IIIILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 481
    .end local v8           #_arg5:Landroid/app/PendingIntent;
    .end local v9           #_arg6:Landroid/app/PendingIntent;
    :cond_19
    const/4 v8, 0x0

    .restart local v8       #_arg5:Landroid/app/PendingIntent;
    goto :goto_1a

    .line 488
    :cond_1a
    const/4 v9, 0x0

    .restart local v9       #_arg6:Landroid/app/PendingIntent;
    goto :goto_1b

    .line 51
    nop

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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
