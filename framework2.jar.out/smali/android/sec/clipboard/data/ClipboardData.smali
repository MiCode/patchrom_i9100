.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mFormatID:I

.field private mIsProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 67
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    .line 68
    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "format"

    .prologue
    .line 84
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 86
    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetFomat()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public GetProtectState()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .locals 3
    .parameter "format"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, isformat:Z
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    if-ne v2, p1, :cond_0

    .line 108
    const/4 v2, 0x1

    .line 115
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 113
    .local v0, altData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    .line 115
    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetProtectState(Z)V
    .locals 0
    .parameter "isProtect"

    .prologue
    .line 201
    iput-boolean p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    .line 202
    return-void
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, Result:Z
    if-eqz p1, :cond_0

    .line 152
    instance-of v2, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 153
    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .line 154
    .local v1, trgData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 158
    .end local v1           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    :goto_0
    return v0

    .line 154
    .restart local v1       #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    .end local v1           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 144
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return-void
.end method
