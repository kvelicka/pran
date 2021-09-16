%% File header record
-record(file_hdr,
	{order,
	 major,
	 minor,
	 gmt_to_localtime, 
	 sigfigs,
	 snaplen,
	 network}).

%% Packet record
-record(frame,
	{seq_no              :: non_neg_integer(),
	 timestamp           :: tuple(), %%now(),
	 timestamp_s,
	 timestamp_us,
	 incl_payload_len    :: non_neg_integer(), 
	 orig_payload_len    :: non_neg_integer(),
	 truncated           :: boolean(),
	 payload,
	 payload_bin         :: binary()}).
