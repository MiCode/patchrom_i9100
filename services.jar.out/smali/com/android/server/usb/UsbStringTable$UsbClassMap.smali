.class Lcom/android/server/usb/UsbStringTable$UsbClassMap;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbClassMap"
.end annotation


# instance fields
.field private final clasz:I

.field private onlyclasz:Z

.field private final protocol:I

.field private final subclass:I

.field private final szsubtext:Ljava/lang/String;

.field private final sztext:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbStringTable;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStringTable;III)V
    .locals 2
    .parameter
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 92
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 93
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 94
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 95
    iput-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"
    .parameter "sztext"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 75
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 76
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 77
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 78
    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"
    .parameter "sztext"
    .parameter "szsubtext"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 67
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 68
    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 69
    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 70
    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "clasz"
    .parameter "sztext"

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    .line 84
    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    .line 85
    iput v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    .line 86
    iput v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    .line 87
    iput-object p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public equals(III)Z
    .locals 3
    .parameter "clasz"
    .parameter "subclass"
    .parameter "protocol"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    if-eqz v2, :cond_2

    .line 101
    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, p1, :cond_3

    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v2, p2, :cond_3

    iget v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-eq v2, p3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    instance-of v3, p1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    .line 110
    .local v0, tmp:Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    iget-boolean v3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    if-eqz v3, :cond_2

    .line 111
    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v3, v4, :cond_1

    .line 115
    .end local v0           #tmp:Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #tmp:Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_1
    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v3, v4, :cond_3

    iget v3, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0           #tmp:Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_4
    move v1, v2

    .line 115
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, tmp:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    return-object v0
.end method
