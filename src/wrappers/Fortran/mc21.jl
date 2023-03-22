function mc21ad(n, icn, licn, ip, lenr, iperm, numnz, iw)
	@ccall libhsl.mc21ad_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint}, lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, iw::Ptr{Cint})::Cvoid
end

# function mc21bd(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
#   @ccall libhsl.mc21bd_(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
# end

function mc21a(n, icn, licn, ip, lenr, iperm, numnz, iw)
	@ccall libhsl.mc21a_(n::Ref{Cint}, icn::Ptr{Cint}, licn::Ref{Cint}, ip::Ptr{Cint}, lenr::Ptr{Cint}, iperm::Ptr{Cint}, numnz::Ref{Cint}, iw::Ptr{Cint})::Cvoid
end

# function mc21b(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
#   @ccall libhsl.mc21b_(n, icn, licn, ip, lenr, iperm, numnz, pr, arp, cv, out)
# end
