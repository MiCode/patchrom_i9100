.class public Landroid/net/DhcpServerConfiguration;
.super Ljava/lang/Object;
.source "DhcpServerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/DhcpServerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DhcpServerConfiguration"

.field public static final dhcpEnableVarName:Ljava/lang/String; = "dhcp"

.field public static final ipRangeEndVarName:Ljava/lang/String; = "end_ip"

.field public static final ipRangeStartVarName:Ljava/lang/String; = "start_ip"

.field public static final leaseTimeVarName:Ljava/lang/String; = "lease_time"

.field public static final maxClientVarName:Ljava/lang/String; = "max_client"


# instance fields
.field public dhcpEnable:Z

.field public ipRangeEnd:Ljava/lang/String;

.field public ipRangeStart:Ljava/lang/String;

.field public leaseTime:I

.field public localIp:Ljava/lang/String;

.field public maxClient:I

.field public subnetmask:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Landroid/net/DhcpServerConfiguration$1;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 56
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 58
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 59
    iput v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 60
    return-void
.end method

.method public static IpToInt(Ljava/lang/String;)I
    .locals 5
    .parameter "addr"

    .prologue
    const/4 v4, 0x4

    .line 113
    if-nez p0, :cond_0

    .line 114
    const/4 v3, -0x1

    .line 122
    :goto_0
    return v3

    .line 116
    :cond_0
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, addrArray:[Ljava/lang/String;
    new-array v2, v4, [I

    .line 119
    .local v2, ipOct:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 120
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_1
    const/4 v3, 0x0

    aget v3, v2, v3

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v2, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x3

    aget v4, v2, v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public static putAddress(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 106
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    instance-of v3, p1, Landroid/net/DhcpServerConfiguration;

    if-nez v3, :cond_2

    move v1, v2

    .line 76
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 79
    check-cast v0, Landroid/net/DhcpServerConfiguration;

    .line 81
    .local v0, testConfig:Landroid/net/DhcpServerConfiguration;
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-boolean v3, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iget-boolean v4, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget v3, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iget v4, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iget v4, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, sbuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-boolean v1, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget v1, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 130
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const-string v0, "DhcpServerConfiguration"

    const-string v1, "writeToParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localIp  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subnetmask  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcpEnable  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipRangeStart  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipRangeEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaseTime  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "DhcpServerConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxClient  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
