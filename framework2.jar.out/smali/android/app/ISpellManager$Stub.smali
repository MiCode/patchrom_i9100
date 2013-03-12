.class public abstract Landroid/app/ISpellManager$Stub;
.super Landroid/os/Binder;
.source "ISpellManager.java"

# interfaces
.implements Landroid/app/ISpellManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISpellManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISpellManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISpellManager"

.field static final TRANSACTION_getInformationHash:I = 0xd

.field static final TRANSACTION_getInstantSpell:I = 0x9

.field static final TRANSACTION_getShallowSpellScroll:I = 0x3

.field static final TRANSACTION_getSpellById:I = 0xa

.field static final TRANSACTION_getSpellMatchOnly:I = 0x8

.field static final TRANSACTION_getSpellNameById:I = 0xc

.field static final TRANSACTION_getSpellNames:I = 0x7

.field static final TRANSACTION_getSpellScroll:I = 0x4

.field static final TRANSACTION_getSpellScrollNameById:I = 0xb

.field static final TRANSACTION_getSpellScrollNames:I = 0x2

.field static final TRANSACTION_getSpellScrollNamesByPriority:I = 0x5

.field static final TRANSACTION_isValidSpell:I = 0x6

.field static final TRANSACTION_isValidSpellScroll:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.ISpellManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISpellManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISpellManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.ISpellManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISpellManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/ISpellManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/ISpellManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/ISpellManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->isValidSpellScroll(Ljava/lang/String;)Z

    move-result v3

    .line 52
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/ISpellManager$Stub;->getSpellScrollNames()Ljava/util/List;

    move-result-object v4

    .line 60
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 66
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v3

    .line 70
    .local v3, _result:Landroid/app/SpellScroll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v6}, Landroid/app/SpellScroll;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/app/SpellScroll;
    :sswitch_4
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v3

    .line 86
    .restart local v3       #_result:Landroid/app/SpellScroll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v3, p3, v6}, Landroid/app/SpellScroll;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/app/SpellScroll;
    :sswitch_5
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->getSpellScrollNamesByPriority(I)Ljava/util/List;

    move-result-object v4

    .line 102
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .line 108
    .end local v0           #_arg0:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_6
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/ISpellManager$Stub;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 114
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_7
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->getSpellNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 124
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Landroid/app/ISpellManager$Stub;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v3

    .line 136
    .local v3, _result:Landroid/app/SpellScroll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v3, p3, v6}, Landroid/app/SpellScroll;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 142
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_result:Landroid/app/SpellScroll;
    :sswitch_9
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/ISpellManager$Stub;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v3

    .line 152
    .restart local v3       #_result:Landroid/app/SpellScroll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_5

    .line 154
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {v3, p3, v6}, Landroid/app/SpellScroll;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 158
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Landroid/app/SpellScroll;
    :sswitch_a
    const-string v7, "android.app.ISpellManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 167
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/ISpellManager$Stub;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v3

    .line 168
    .restart local v3       #_result:Landroid/app/SpellScroll;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_6

    .line 170
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v3, p3, v6}, Landroid/app/SpellScroll;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 174
    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v0           #_arg0:J
    .end local v3           #_result:Landroid/app/SpellScroll;
    :sswitch_b
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 183
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/ISpellManager$Stub;->getSpellScrollNameById(J)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:J
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 193
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/ISpellManager$Stub;->getSpellNameById(J)Ljava/lang/String;

    move-result-object v3

    .line 194
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v0           #_arg0:J
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v5, "android.app.ISpellManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/app/ISpellManager$Stub;->getInformationHash()I

    move-result v3

    .line 202
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
