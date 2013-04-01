.class public Lcom/sec/android/app/fm/ui/RTPTag;
.super Ljava/lang/Object;
.source "RTPTag.java"


# instance fields
.field private info:Ljava/lang/String;

.field private tagCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "tagCode"
    .parameter "info"

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/sec/android/app/fm/ui/RTPTag;->tagCode:I

    .line 9
    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/fm/ui/RTPTag;->info:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 33
    instance-of v2, p1, Lcom/sec/android/app/fm/ui/RTPTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/sec/android/app/fm/ui/RTPTag;

    .line 35
    .local v0, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    iget v2, p0, Lcom/sec/android/app/fm/ui/RTPTag;->tagCode:I

    iget v3, v0, Lcom/sec/android/app/fm/ui/RTPTag;->tagCode:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTag;->info:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/fm/ui/RTPTag;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 37
    .end local v0           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_0
    return v1
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTag;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getTagCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/sec/android/app/fm/ui/RTPTag;->tagCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/fm/ui/RTPTag;->tagCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTag;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
