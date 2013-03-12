.class final enum Landroid/hardware/contextaware/CAPropertyBundle$PropertyType$2;
.super Landroid/hardware/contextaware/CAPropertyBundle$PropertyType;
.source "CAPropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/CAPropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/CAPropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Landroid/hardware/contextaware/CAPropertyBundle;->access$200()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Ljava/lang/Integer;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->access$202(I)I

    .line 86
    :goto_0
    return-void

    .line 77
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 78
    check-cast p1, Ljava/lang/Long;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 79
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Ljava/lang/Float;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 81
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 82
    check-cast p1, Ljava/lang/Double;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/contextaware/CAPropertyBundle;->access$202(I)I

    goto :goto_0

    .line 84
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
