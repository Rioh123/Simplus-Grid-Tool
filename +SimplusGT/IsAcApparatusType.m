function Flag = IsAcApparatusType(ApparatusType)
%ISACAPPARATUSTYPE True for active ac apparatus models.
%
% Types 0-89 are native white-box ac models. Types 4000 and 4001 are
% identified ac admittance models imported from dq- and sequence-domain
% impedance data, respectively.

Flag = ((ApparatusType >= 0) & (ApparatusType <= 89)) | ...
    ismember(ApparatusType,[4000,4001]);

end
