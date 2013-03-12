.class public interface abstract Landroid/app/BarBeamCommand;
.super Ljava/lang/Object;
.source "BarBeamCommand.java"


# virtual methods
.method public abstract addListener(Landroid/app/BarBeamListener;)V
.end method

.method public abstract isImplementationCompatible()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/app/BarBeamListener;)V
.end method

.method public abstract setBarcode([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation
.end method

.method public abstract setHopSequence([Landroid/app/Hop;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation
.end method

.method public abstract startBeaming()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation
.end method

.method public abstract startBeaming(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation
.end method

.method public abstract stopBeaming()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/BarBeamException;
        }
    .end annotation
.end method
