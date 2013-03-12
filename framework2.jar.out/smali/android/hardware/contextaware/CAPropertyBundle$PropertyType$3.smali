.class final enum Landroid/hardware/contextaware/CAPropertyBundle$PropertyType$3;
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
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/CAPropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/CAPropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Landroid/hardware/contextaware/CAPropertyBundle;->access$300()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, value:Ljava/lang/Object;,"TT;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Ljava/lang/Integer;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/CAPropertyBundle;->access$302(J)J

    .line 110
    :goto_0
    return-void

    .line 101
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Ljava/lang/Long;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/CAPropertyBundle;->access$302(J)J

    goto :goto_0

    .line 103
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Ljava/lang/Float;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/CAPropertyBundle;->access$302(J)J

    goto :goto_0

    .line 105
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 106
    check-cast p1, Ljava/lang/Double;

    .end local p1           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/hardware/contextaware/CAPropertyBundle;->access$302(J)J

    goto :goto_0

    .line 108
    .restart local p1       #value:Ljava/lang/Object;,"TT;"
    :cond_3
    const-string v0, "Cannot cast data type."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
