.class public final Li1/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-static {p1, v0}, Lr0/e;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li1/p$c;->a:Landroid/app/Activity;

    return-void
.end method
