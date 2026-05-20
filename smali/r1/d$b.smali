.class public final Lr1/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr1/d;->a(Lu1/a;)Lr1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr1/n<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp1/l;

.field public final synthetic c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lp1/l;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p1, p0, Lr1/d$b;->b:Lp1/l;

    iput-object p2, p0, Lr1/d$b;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lr1/d$b;->b:Lp1/l;

    invoke-interface {v0}, Lp1/l;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
