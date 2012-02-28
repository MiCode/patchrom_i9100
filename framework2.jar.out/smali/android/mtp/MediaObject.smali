.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:I

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 710
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 692
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 693
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 694
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 696
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 697
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 698
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 699
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 701
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 702
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 703
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 704
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 705
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 706
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 707
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 708
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 711
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside MediaObject Constructor"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "filename"
    .parameter "album"
    .parameter "artist"
    .parameter "composer"
    .parameter "creationDate"
    .parameter "description"
    .parameter "duration"
    .parameter "id"
    .parameter "language"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "mimeType"
    .parameter "modificationDate"
    .parameter "path"
    .parameter "size"
    .parameter "title"
    .parameter "year"
    .parameter "genreName"

    .prologue
    .line 716
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 692
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 693
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 694
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 696
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 697
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 698
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 699
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 701
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 702
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 703
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 704
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 705
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 706
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 707
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 708
    const-string v1, ""

    iput-object v1, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 717
    iput-object p1, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    .line 718
    iput-object p2, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    .line 719
    iput-object p3, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    .line 720
    iput-object p4, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    .line 721
    iput-object p5, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    .line 722
    iput-object p6, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    .line 723
    if-eqz p7, :cond_0

    .line 724
    invoke-static {p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    .line 728
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/mtp/MediaObject;->duration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 729
    iput-object p8, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    .line 730
    iput-object p9, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    .line 731
    iput-object p10, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    .line 732
    iput-object p11, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    .line 733
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/mtp/MediaObject;->mimeType:Ljava/lang/String;

    .line 734
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    .line 735
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    .line 736
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    .line 737
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    .line 738
    if-eqz p17, :cond_1

    .line 739
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    .line 743
    :goto_1
    move-object/from16 v0, p18

    iput-object v0, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    .line 744
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Genre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    return-void

    .line 726
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->duration:I

    goto :goto_0

    .line 741
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/mtp/MediaObject;->year:I

    goto :goto_1
.end method
