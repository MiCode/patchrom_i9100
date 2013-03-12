.class final Lcom/android/internal/telephony/AdnRecord$1;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/AdnRecord;
    .locals 11
    .parameter "source"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .local v1, efid:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .local v2, recordNumber:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, number:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, anr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, anrA:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, anrB:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, anrC:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, sne:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/AdnRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/AdnRecord;
    .locals 1
    .parameter "size"

    .prologue
    .line 112
    new-array v0, p1, [Lcom/android/internal/telephony/AdnRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/AdnRecord;

    move-result-object v0

    return-object v0
.end method
