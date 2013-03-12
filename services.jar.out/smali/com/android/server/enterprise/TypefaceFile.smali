.class public Lcom/android/server/enterprise/TypefaceFile;
.super Ljava/lang/Object;
.source "TypefaceFile.java"


# instance fields
.field private droidName:Ljava/lang/String;

.field private fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "droidName"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getDroidName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public setDroidName(Ljava/lang/String;)V
    .locals 0
    .parameter "droidName"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDroidname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/TypefaceFile;->droidName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
